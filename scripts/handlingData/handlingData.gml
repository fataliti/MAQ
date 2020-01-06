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

        var offsetSurface = 4 + nickLengMax * 6;
        var hasAvatar = avatar == -1 ?  0 : 1;
        var me = buffer_create(offsetSurface + avatarSize * avatarSize * 4, buffer_grow, 1);
        
        buffer_write(me, buffer_u8, ENet.connected);
        buffer_write(me, buffer_u8, _id);
        buffer_write(me, buffer_string, o_control.nickname);
        buffer_write(me, buffer_u8, hasAvatar);
        if hasAvatar {
            var surf = surface_create(avatarSize, avatarSize);
            surface_set_target(surf);
            draw_clear_alpha(c_black, 0);
            draw_sprite(avatar, 0, 0, 0);
            surface_reset_target();
            buffer_get_surface(me, surf, 0, offsetSurface, 0);
            buffer_seek(me, buffer_seek_end, 0);
            surface_free(surf);
        }
        sendHost(me);
        break;
    case ENet.connected:
        var player = buffer_read(buffer, buffer_u8);
        var nick = buffer_read(buffer, buffer_string);
        var hasAvatar = buffer_read(buffer, buffer_u8);
        
        if hasAvatar {
            var surf = surface_create(avatarSize, avatarSize);
            buffer_set_surface(buffer, surf, 0, 4 + nickLengMax * 6, 0);
            
            with (o_player) {
                if (player == _id) {
                    avatar = sprite_create_from_surface(surf, 0, 0, avatarSize, avatarSize, 0, 0, 0, 0);
                    nickname = nick;
                }
            }
            surface_free(surf);
        } else {
            with (o_player) {
                if (player == _id) {
                    nickname = nick;
                }
            }
        }
        buffer_seek(buffer, buffer_seek_start, 0);
        buffer_write(buffer, buffer_u8, ENet.announceForAll);
        buffer_seek(buffer, buffer_seek_end, 0);
        sendAllExceptOne(buffer ,player);
        
        
        var bufSize = 2 + (instance_number(o_player) * (nickLengMax * 6 + 2)); ///байты для айдишников/очков/никнеймов
        var avatarQueue = [];
        with(o_player) {
            if avatar != -1 && _id != player {
                bufSize += avatarSize * avatarSize * 4; //еще байтов на аватарки
                avatarQueue[ array_length_1d(avatarQueue)] = id;
            }
        }
        //еще немного байтов на последовательность чтения сурфейса
        bufSize += 1 + array_length_1d(avatarQueue);
        var players = buffer_create(bufSize, buffer_grow, 1);
        buffer_write(players, buffer_u8, ENet.announceForNew);
        
        var count = instance_number(o_player);
        buffer_write(players, buffer_u8, count);
        with (o_player) {
            buffer_write(players, buffer_u8, _id);
            buffer_write(players, buffer_u8, points);
            buffer_write(players, buffer_string, nickname);
        }
        
        //зашить все авы в 1 сурфейс лучше чем в разные
        
        var arrLeng = array_length_1d(avatarQueue);
        buffer_write(players, buffer_u8, arrLeng); 
        if arrLeng {
            var avatarMap = surface_create(avatarSize * arrLeng, avatarSize);
            surface_set_target(avatarMap);
            draw_clear_alpha(c_black, 0);
            var i = 0;
            repeat(arrLeng){
                draw_sprite( avatarQueue[i].avatar, 0, avatarSize*i, 0);
                buffer_write(players, buffer_u8, avatarQueue[i]._id);
                i++;
            }
            surface_reset_target();
            var surfOfs = buffer_tell(players);
            buffer_get_surface(players, avatarMap, 0, surfOfs, 0);
            buffer_seek(players, buffer_seek_end, 0);
            surface_free(avatarMap);
        }
        // todo: Зашить историю игры/текущее состояние
        // Он кричал мама я не хочу считать байты
        sendUser(player, players);
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
            
            var surfOfs = buffer_tell(buffer);
            avatarMap = surface_create(avatarSize * avatarCnt, avatarSize);
            buffer_set_surface(buffer, avatarMap, 0, surfOfs, 0);
            var i = 0;
            repeat(avatarCnt){
                avatarIns[i].avatar = sprite_create_from_surface(avatarMap, avatarSize * i, 0, avatarSize, avatarSize, 0, 0, 0, 0);
                i++;
            }
            surface_free(avatarMap);
        }
        
        
        if avatar != -1 {
            with(o_player){
                if _id == other._id {
                    avatar = sprite_duplicate(other.avatar);
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
        // todo: показывается ответ
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