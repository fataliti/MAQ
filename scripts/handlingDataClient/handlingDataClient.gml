/// @param buffer
var buffer = argument0;
buffer_seek(buffer, buffer_seek_start, 0);
var act = buffer_read(buffer, buffer_u8);

switch (act) {
    case EChat.message:
        ds_list_insert(o_chat.messages, 0, buffer_read(buffer, buffer_string));
        break;
    case ENet.information: 
        _id = buffer_read(buffer, buffer_u8);
        
        o_control.roundCurrent = buffer_read(buffer, buffer_u8);
        o_control.roundTotal = buffer_read(buffer, buffer_u8);
        
        repeat(o_control.roundCurrent) {
            o_history.game_arr[ array_height_2d(o_history.game_arr), EData.name] = buffer_read(buffer, buffer_string);
        }
        
        switch(buffer_read(buffer, buffer_u8)){
            case ESong.prepare:
                songLink = http_get_file( buffer_read(buffer, buffer_string), "guess.song");
                alarm[0] = tickrate;
                break;
            case ESong.play:
                o_control.countdown = buffer_read(buffer, buffer_f32);
                awaitNextRound = true;
                break;
        }
        
        var offsetSurface = 4 + nickLengMax * 6;
        var hasAvatar = o_control.avatar == -1 ?  0 : 1;
        var me = buffer_create(offsetSurface + avatarSize * avatarSize * 4, buffer_grow, 1);
        buffer_write(me, buffer_u8, ENet.connected);
        buffer_write(me, buffer_u8, _id);
        buffer_write(me, buffer_string, o_control.nickname);
        buffer_write(me, buffer_u8, hasAvatar);
        if hasAvatar {
            var surf = surface_create(avatarSize, avatarSize);
            surface_set_target(surf);
            draw_clear_alpha(c_black, 0);
            draw_sprite(o_control.avatar, 0, 0, 0);
            surface_reset_target();
            buffer_get_surface(me, surf, 0, offsetSurface, 0);
            buffer_seek(me, buffer_seek_end, 0);
            surface_free(surf);
        }
        sendHost(me);
        break;
        
    case ENet.announceForAll:
        var newId = buffer_read(buffer, buffer_u8);

        var newPlayer = instance_create_depth(650, 60 + 30 * newId, 0, o_player);
        newPlayer._id = newId;
        newPlayer.nickname = buffer_read(buffer, buffer_string);
        
        if buffer_read(buffer, buffer_u8) {
            var surf = surface_create(avatarSize, avatarSize);
            buffer_set_surface(buffer, surf, 0, 4 + nickLengMax * 6, 0);
            newPlayer.avatar = sprite_create_from_surface(surf, 0, 0, avatarSize, avatarSize, 0, 0, 0, 0);
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

            new_player = instance_create_depth(650, 60 + 30 * new_id, 0, o_player);
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
            var avatarMap = surface_create(avatarSize * avatarCnt, avatarSize);
            buffer_set_surface(buffer, avatarMap, 0, buffer_tell(buffer), 0);
            var i = 0;
            repeat(avatarCnt){
                avatarIns[i].avatar = sprite_create_from_surface(avatarMap, avatarSize * i, 0, avatarSize, avatarSize, 0, 0, 0, 0);
                i++;
            }
            surface_free(avatarMap);
        }
        if o_control.avatar != -1 {
            with(o_player){
                if _id == other._id {
                    avatar = sprite_duplicate(o_control.avatar);
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
    case EPlayer.point:
        var player = buffer_read(buffer, buffer_u8);
        with (o_player) {
            if (_id == player) {
                points++;
            }
        }
        break;
    case EPlayer.kick:
        var player = buffer_read(buffer, buffer_u8);
        if (_id == player) {
            network_destroy(global.socket);
            global.socket = -1;
            show_message("Тебя кикнули из игры");
            game_restart();
        }
        break;
    case ESong.status:
        var player = buffer_read( buffer, buffer_u8);
        with (o_player) {
            if (_id == player) {
                loading = buffer_read( buffer, buffer_u8) / 100;
            }
        }
        break;
    case ESong.prepare:
        songLink = http_get_file( buffer_read(buffer, buffer_string), "guess.song");
        songLoading = 0;
        alarm[0] = tickrate;
        break;
    case ESong.play:
        o_control.countdown = countdownDefault;
        if (songFile != -1) {
            mediaPlayer = audio_play_sound(songFile, 10, false);
        }
        break;
    case ESong.stop:
        var linkToPic = buffer_read(buffer, buffer_string);
        if linkToPic != "" {
            songPic = http_get_file( linkToPic, "guess.pic");
        }
        songName = buffer_read(buffer, buffer_string); 
        
        if awaitNextRound {
            break;
        }
        
        trace_mf0 "timer end" trace_mf1;
        audio_stop_sound(mediaPlayer);
        mediaPlayer = -1;
        audio_destroy_stream(songFile);
        songFile = -1;
        o_control.countdown = 0;
        break;
    case ESong.answer:
        
        repeat(buffer_read( buffer, buffer_u8)){
            var playerId = buffer_read(buffer, buffer_u8);
            with(o_player){
                if _id == playerId{
                    answer = buffer_read( buffer, buffer_string);
                }
            }
        }
        
        if songName != "" {
            o_history.game_arr[array_height_2d(o_history.game_arr), EData.name] = songName;
            var insAnswer = instance_create_depth(0, 0, 0, o_right_answer);
            insAnswer.answerText   = songName;
            insAnswer.answerSprite = songSprite;
        }
        break;
    case ESong.next:
        awaitNextRound = false;

        songSprite = -1;
        o_control.roundCurrent++;
        
        with(o_right_answer){
            instance_destroy();
        }
        with(o_player){
            answer = "";
        }
        with(o_field_answer){
            textfield_string = "";
            textfield_active = false;
        }
        break;
    case EPing.check:
        var pong = buffer_create(32, buffer_grow, 1);
        buffer_write(pong, buffer_u8, EPing.get);
        buffer_write(pong, buffer_u8, _id);
        buffer_write(pong, buffer_u16, current_time - response);
        sendHost(pong);
        break;
    case EPing.get:
        var player = buffer_read( buffer, buffer_u8);
        with (o_player){
            if (_id == player) {
                ping = buffer_read( buffer, buffer_u16);
            }
        }
        break;
}