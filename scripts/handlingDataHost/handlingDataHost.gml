/// @param buffer
var buffer = argument0;
buffer_seek(buffer, buffer_seek_start, 0);
var act = buffer_read(buffer, buffer_u8);

var avaSize = avatarSize / 4;

switch(act){
    case EChat.message:
        var msgIns = instance_create_depth(o_chat.x, o_chat.y + o_scroll_chat.scrolled, 0, o_chat_message);
        msgIns.message = buffer_read(buffer, buffer_string);
        with(msgIns) {
        	script_execute(lambda_string_split);
        }
        sendAll(buffer);
        break;
    case ENet.connected:
        var player = buffer_read(buffer, buffer_u8);
		with (o_player) {
            if (player == _id) {
                nickname = buffer_read(buffer, buffer_string);
                if buffer_read(buffer, buffer_u8) {
					var surf = surface_create(avaSize, avaSize);
					buffer_set_surface(buffer, surf, 0, buffer_tell(buffer), 0);
					avatar = sprite_create_from_surface(surf, 0, 0, avaSize, avaSize, 0, 1, 0, 0);
					surface_free(surf);
                }
            }
        }
        buffer_poke(buffer, 0, buffer_u8, ENet.announceForAll);
        buffer_seek(buffer, buffer_seek_end, 0);
        sendAllExceptOne(buffer ,player);
        
        var avatarQueue = [];
        with(o_player) {
            if avatar != -1 && _id != player {
                avatarQueue[ array_length_1d(avatarQueue)] = id;
            }
        }
        
        var players = buffer_create(128, buffer_grow, 1);
        buffer_write(players, buffer_u8, ENet.announceForNew);

        var count = instance_number(o_player);
        buffer_write(players, buffer_u8, count);
        with (o_player) {
            buffer_write(players, buffer_u8, _id);
            buffer_write(players, buffer_u8, points);
            buffer_write(players, buffer_string, nickname);
        }

        var arrLeng = array_length_1d(avatarQueue);
        buffer_write(players, buffer_u8, arrLeng); 
        if arrLeng {
            var avatarMap = surface_create(avaSize * arrLeng, avaSize);
            surface_set_target(avatarMap);
            draw_clear_alpha(c_black, 0);
            var i = 0;
            repeat(arrLeng){
                draw_sprite( avatarQueue[i].avatar, 0, avaSize*i, 0);
                buffer_write(players, buffer_u8, avatarQueue[i]._id);
                i++;
            }
            surface_reset_target();
			buffer_resize(players, buffer_tell(players) + surface_get_height(avatarMap)*surface_get_width(avatarMap)*4);
            buffer_get_surface(players, avatarMap, 0, buffer_tell(players), 0);
            buffer_seek(players, buffer_seek_end, 0);
            surface_free(avatarMap);
        }
        
        sendUser(player, players);
        break;
    case ESong.status:
        var player = buffer_read( buffer, buffer_u8);

        with (o_player) {
            if (_id == player) {
                loading = buffer_read( buffer, buffer_u8) / 100;
            }
        }
        break;
    case EPlayer.answer:
        var player = buffer_read(buffer, buffer_u8);
        with (o_player) {
            if (_id == player)
                answer = buffer_read(buffer, buffer_string);
        }
        if o_control.countdown <= 0
        	sendAll(buffer);
        break;
    case EPing.check:
        var player = buffer_read(buffer, buffer_u8);
        sendUser(player, buffer);
        break;
    case EPing.get:
        var player = buffer_read( buffer, buffer_u8);
        with (o_player){
            if (_id == player) {
                ping = buffer_read( buffer, buffer_u16);
            }
        }
        break;
    case ESong.skip:
    	o_control.skipPlayers++;
    	sendAll(buffer);
    	
    	if o_control.skipPlayers >= instance_number(o_player)
    		o_control.countdown = 0.1;
    	
    	break;
    
}