/// @param buffer
var buffer = argument0;
buffer_seek(buffer, buffer_seek_start, 0);
var act = buffer_read(buffer, buffer_u8);

switch (act) {
    case EChat.message:
        var msg = buffer_read(buffer, buffer_string);
        ds_list_add(o_chat.messages, msg);

        if (global.server != -1) {
            sendAll(buffer);
        }

        break;
    case ENet.information:  
        _id = buffer_read(buffer, buffer_u8);
    
        var me = buffer_create(64, buffer_grow, 1);
        buffer_write(me, buffer_u8, ENet.connected);
        buffer_write(me, buffer_u8, _id);
        buffer_write(me, buffer_string, o_control.nickname);
        sendHost(me);

        break;
    case ENet.connected:
        var player = buffer_read( buffer, buffer_u8);
        var nick = buffer_read( buffer, buffer_string);
        with (o_player) {
            if (player == _id) {
                nickname = nick;
            }
        }

        var players = buffer_create(128, buffer_grow, 1);
        buffer_write(players, buffer_u8, ENet.announce);
        
        var count = instance_number(o_player);
        buffer_write(players, buffer_u8, count);
        with (o_player) {
            buffer_write(players, buffer_u8, _id);
            buffer_write(players, buffer_string, nickname);
        }
        sendAll(players);
        
        break;
    case ENet.announce:
        var count = buffer_read(buffer, buffer_u8);
        
        var new_id, new_nick, new_exist, new_player;
        repeat(count) {
            new_exist = false;
            new_id = buffer_read(buffer, buffer_u8);
            new_nick = buffer_read(buffer, buffer_string);
            
            with (o_player) {
                if (_id == new_id) {
                    new_exist = true;
                }
            }
            
            if (!new_exist) {
                new_player = instance_create_layer(650, 60 + 30 * new_id, "layer_game", o_player);
                new_player._id = new_id;
                new_player.nick = new_nick;
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
        
        with (o_player) {
            if (_id == player) {
                instance_destroy();
            }
        }
        
        if (_id == player) {
            network_destroy(global.socket);
            global.socket = -1;
            game_restart();
        }

        break;
    case EPlayer.answer:
        var player = buffer_read(buffer, buffer_u8);
        
        with (o_player) {
            if (_id == player)
                answer = buffer_read(buffer, buffer_string);
        }
        if (global.server != -1) {
            sendAll(buffer);
        }
        break;
    case ESong.prepare:
        var url = "https://mp3-partys.ru/dl/files/Zivert_-_Life.mp3"; // todo: подгрузка ссылок
        songLink = http_get_file(url, working_directory + "guess.song");

        alarm[0] = tickrate;

        break;
    case ESong.play:
        countdown = countdownDefault;
        
        if (songFile != -1) {
            mediaPlayer = audio_play_sound(songFile, 10, false);
        }

        break;
    case ESong.stop:
        audio_stop_sound(mediaPlayer);
        mediaPlayer = -1;
        audio_destroy_stream(songFile);
        songFile = -1;
        countdown = 0;

        break;
    case ESong.status:
        var player = buffer_read( buffer, buffer_u8);
        
        with (o_player) {
            if (_id == player) {
                loading = buffer_read( buffer, buffer_u8) / 100;
            }
        }
        
        if (global.server != -1) {
            sendAll(buffer);
        }
        
        break;
    case ESong.answer:
        // Показывается ответ
        break;
    case ESong.next:
        roundCurrent++;
    
        break;
    case EPing.check:
        var player = buffer_read(buffer, buffer_u8);
        
        if (global.server != -1) {
            sendUser(player, buffer);
        } else {
            var pong = buffer_create(32, buffer_grow, 1);
            buffer_write(pong, buffer_u8, EPing.get);
            buffer_write(pong, buffer_u8, _id);
            buffer_write(pong, buffer_u16, current_time - response);
            sendHost(pong);
        }

        break;
    case EPing.get:
        var player = buffer_read( buffer, buffer_u8);
        
        with (o_player){
            if (_id == player) {
                ping = buffer_read( buffer, buffer_u16);
            }
        }
        
        if (global.server != -1) {
            sendAll(buffer);
        }
        
        break;
}