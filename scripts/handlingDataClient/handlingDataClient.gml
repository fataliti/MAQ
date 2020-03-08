/// @param buffer
var buffer = argument0;
buffer_seek(buffer, buffer_seek_start, 0);
var act = buffer_read(buffer, buffer_u8);

var avaSize = avatarSize / 4;

switch (act) {
    case EChat.message:
        var msgIns = instance_create_depth(o_chat.x, o_chat.y + o_scroll_chat.scrolled, 0, o_chat_message);
        msgIns.message = buffer_read(buffer, buffer_string);
        with(msgIns) {
        	script_execute(lambda_string_split);
        }
        break;
    case ENet.information: 
        _id = buffer_read(buffer, buffer_u8);
        
        o_control.roundCurrent = buffer_read(buffer, buffer_u8);
        o_control.roundTotal = buffer_read(buffer, buffer_u8);
        
        repeat(o_control.roundCurrent) {
            o_history.game_arr[ array_height_2d(o_history.game_arr), EData.name] = buffer_read(buffer, buffer_string);
        }
        with(o_history)
        	script_execute(lambda_scroll_round, o_control.roundCurrent - 1);
        
        o_control.roundTime = buffer_read(buffer, buffer_u8);
        
        global.gameState = buffer_read(buffer, buffer_u8);
        switch(global.gameState){
            case ESong.prepare:
				var link = buffer_read(buffer, buffer_string);
				var len  = buffer_read(buffer, buffer_u8);
				var start= buffer_read(buffer, buffer_u8);
				GetMedia(link, len, start);
				alarm[0] = tickrate;
                break;
            case ESong.play:
                o_control.countdown = buffer_read(buffer, buffer_f32);
                awaitNextRound = true;
                break;
        }
        
        o_player_host.nickname = buffer_read(buffer, buffer_string);
        if buffer_read(buffer, buffer_u8){
            var surf = surface_create(avaSize,avaSize);
            buffer_set_surface(buffer, surf, 0, buffer_tell(buffer), 0);
            o_player_host.avatar = sprite_create_from_surface(surf, 0, 0, avaSize, avaSize, 0, 1, 0, 0);
            surface_free(surf);
        }
        
        
        var hasAvatar = o_control.avatar == -1 ?  0 : 1;
        var me = buffer_create(128, buffer_grow, 1);
        buffer_write(me, buffer_u8, ENet.connected);
        buffer_write(me, buffer_u8, _id);
        buffer_write(me, buffer_u8, 0);
        buffer_write(me, buffer_string, o_control.nickname);
        buffer_write(me, buffer_u8, hasAvatar);
        if hasAvatar {
        	buffer_resize(me, buffer_tell(me) + avaSize * avaSize * 4);
            var surf = surface_create(avaSize, avaSize);
            surface_set_target(surf);
            draw_clear_alpha(c_black, 0);
            draw_sprite_ext(o_control.avatar, 0, 0, 0, avaSize / avatarSize, avaSize / avatarSize, 0, c_white, 1);
            surface_reset_target();
            buffer_get_surface(me, surf, 0, buffer_tell(me), 0);
            buffer_seek(me, buffer_seek_end, 0);
            surface_free(surf);
        }
        sendHost(me);
        break;
    case ENet.announceForAll:
        var newId = buffer_read(buffer, buffer_u8);

        var newPlayer = instance_create_depth(672, -30 + 55 * newId + o_scroll_player.scrolled , 0, o_player);
        newPlayer._id = newId;
        newPlayer.points = buffer_read(buffer, buffer_u8);
        newPlayer.nickname = buffer_read(buffer, buffer_string);
        
        if buffer_read(buffer, buffer_u8) {
            var surf = surface_create(avaSize, avaSize);
            buffer_set_surface(buffer, surf, 0, buffer_tell(buffer), 0);
            newPlayer.avatar = sprite_create_from_surface(surf, 0, 0, avaSize, avaSize, 0, 1, 0, 0);
            surface_free(surf);
        }

        break;
    case ENet.announceForNew:
        var count = buffer_read(buffer, buffer_u8);
        var new_id, new_nick, new_player, new_point;
        repeat(count) {
            new_id = buffer_read(buffer, buffer_u8);
            new_point = buffer_read(buffer, buffer_u8);
            new_nick  = buffer_read(buffer, buffer_string);
            
            new_player = instance_create_depth(672, -30 + 55 * new_id, 0, o_player);
            new_player._id = new_id;
            new_player.points = new_point;
            new_player.nickname = new_nick;
        }
        var avatarCnt = buffer_read(buffer, buffer_u8);
        if avatarCnt {
            var avatarIns = [];
            var readId;
            repeat(avatarCnt){
                readId = buffer_read(buffer, buffer_u8);
                with(o_player){
                    if _id == readId{
                        avatarIns[array_length_1d(avatarIns)] = id;
                    }
                }
            }
            var avatarMap = surface_create(avaSize * avatarCnt, avaSize);
            buffer_set_surface(buffer, avatarMap, 0, buffer_tell(buffer), 0);
            var i = 0;
            repeat(avatarCnt){
                avatarIns[i].avatar = sprite_create_from_surface(avatarMap, avaSize * i, 0, avaSize, avaSize, 0, 1, 0, 0);
                i++;
            }
            surface_free(avatarMap);
        }
        if o_control.avatar != -1 {
            var myAvaSurf = surface_create(avaSize,avaSize);
            surface_set_target(myAvaSurf);
            draw_clear_alpha(c_black,0);
            draw_sprite_ext(o_control.avatar, 0, 0, 0, avaSize/avatarSize, avaSize/avatarSize, 0, c_white, 1);
            var _avatar = sprite_create_from_surface(myAvaSurf, 0, 0, avaSize, avaSize, 0, 1, 0, 0);
            surface_reset_target();
            surface_free(myAvaSurf);
            with(o_player){
                if _id == other._id {
                    avatar = _avatar;
                }
            }
        }
        break;
    case ENet.disconnected:
        var player = buffer_read(buffer, buffer_u8);
        with (o_player) {
            if (_id == player) {
                instance_destroy();
            }
        }
        break;
    case EPlayer.pointPlus:
        var player = buffer_read(buffer, buffer_u8);
        with (o_player) {
            if (_id == player) {
                points++;
            }
        }
        break;
    case EPlayer.pointMinus:
        var player = buffer_read(buffer, buffer_u8);
        with (o_player) {
            if (_id == player) {
                points--;
            }
        }
        break;
    case EPlayer.kick:
        var player = buffer_read(buffer, buffer_u8);
        if (_id == player) {
            show_message("Тебя кикнули");
            script_execute(o_control.lambda_game_restore);
        }
        break;
    case EPlayer.ban:
        var player = buffer_read(buffer, buffer_u8);
        if (_id == player) {
            show_message("Тебя забанили");
            script_execute(o_control.lambda_game_restore);
        }
        break;
    case EPlayer.excepted:
        show_message("Тебя исключили");
        script_execute(o_control.lambda_game_restore);
        break;
    case EPlayer.answer:
    	var player = buffer_read(buffer, buffer_u8);
    	with(o_player){
    		if _id == player{
    			answer = buffer_read(buffer, buffer_string);
    		}
    	}
    	break;
    case ESong.status:
        var player;
        repeat(buffer_read(buffer, buffer_u8)) {
        	player = buffer_read(buffer, buffer_u8);
        	with(o_player){
        		if _id == player
        			loading = buffer_read(buffer, buffer_u8) / 100;
        	}
        }
        o_player_host.loading = buffer_read(buffer, buffer_u8) / 100;
        break;
    case ESong.prepare:
    	global.gameState = ESong.prepare;
    	var link = buffer_read(buffer, buffer_string);
    	var len  = buffer_read(buffer, buffer_u8);
    	var start= buffer_read(buffer, buffer_u8);
    	o_control.roundTime = len;
		GetMedia(link, len, start);
        alarm[0] = tickrate;
        break;
    case ESong.play:
    	global.gameState = ESong.play;
    	var _countdown = buffer_read(buffer, buffer_u8);
        if _countdown > 0
        	o_control.countdown = _countdown;
        else 
        	o_control.countdown = infinity;
        	
        if (o_control.songFile != -1) {
            o_control.mediaPlayer = playMusic(o_control.songFile);
        }
        
        var linkToPic = buffer_read(buffer, buffer_string);
		if linkToPic != "" {
		    o_control.songPic = http_get_file( linkToPic, "guess.pic");
		}
        
        instance_activate_object(o_button_skip);
        break;
    case ESong.answer:
    	global.gameState = ESong.answer;
    	with(o_field_answer) {
        	script_execute(lambda_answer_send);
        }
    	
    	with(o_button_skip){
    		instance_deactivate_object(self);
    	}
    	
	    audio_stop_sound(o_control.mediaPlayer);
	    o_control.mediaPlayer = -1;
	    audio_destroy_stream(o_control.songFile);
	    o_control.songFile = -1;
    	o_control.countdown = 0;
    	
        repeat(buffer_read( buffer, buffer_u8)){
            var playerId = buffer_read(buffer, buffer_u8);
            with(o_player){
                if _id == playerId{
                    answer = buffer_read( buffer, buffer_string);
                }
            }
        }
    	
        var sName = buffer_read(buffer, buffer_string); 
        o_history.game_arr[array_height_2d(o_history.game_arr), EData.name] = sName;
        if !o_control.hinted {
	        var insAnswer = instance_create_depth(0, 0, 0, o_right_answer);
	        insAnswer.answerText = sName;
	        
	        if sprite_exists(o_control.songSprite) 
				insAnswer.answerSprite = o_control.songSprite;
			
        } else {
        	o_right_answer.answerText = sName;
        }
        break;
    case ESong.next:
    	global.gameState = ESong.next;
    	o_control.skipPlayers = 0;
    	o_control.hinted = false;
    	
    	if !awaitNextRound {
    		ResetStatus();
    	}
    	
        awaitNextRound = false;

        songSprite = -1;
        o_control.roundCurrent++;
        
        with(o_right_answer){
            instance_destroy();
        }
        with(o_player){
            answer = "";
            loading = 0;
        }
        with(o_field_answer){
            textfield_string = "";
            textfield_active = false;
        }
    	o_player_host.loading = 0;
        
		with(o_history)
			script_execute(lambda_scroll_round, o_control.roundCurrent - 1);
        break;
	case ESong.hint:
    	o_control.hinted = true;
		instance_create_depth(0, 0, 0, o_right_answer);
		
		if sprite_exists(o_control.songSprite) {
			o_right_answer.answerSprite = o_control.songSprite;
		}
    	break; 	
    case ESong.skip:
    	o_control.skipPlayers++;
    	break;	
    case ENet.gameOver:
    	ResetStatus();
    	gameOverSort();
    	instance_activate_object(o_gameOver);
    	with(o_right_answer){instance_destroy();}
    	break;
    case EPing.check:
        var pong = buffer_create(32, buffer_grow, 1);
        buffer_write(pong, buffer_u8, EPing.get);
        buffer_write(pong, buffer_u8, _id);
        buffer_write(pong, buffer_u16, round((current_time - response) / 2));
        sendHost(pong);
        lastResponsePast = 0;
        break;
    case EPing.get:
        repeat(buffer_read(buffer, buffer_u8)){
			var player = buffer_read( buffer, buffer_u8);
			with (o_player){
				if (_id == player) {
					ping = buffer_read( buffer, buffer_u16);
				}
			}
        }
        
        break;
}