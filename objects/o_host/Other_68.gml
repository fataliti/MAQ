
var type = async_load[? "type"];

switch(type) {
    case network_type_connect:
    	var connect_break = false;
    	var newIp = async_load[? "ip"];
    	
        var indexSocket = async_load[? "socket"];
        if (ds_list_find_index(kiklist, newIp) != -1 || ds_list_find_index(banlist, newIp) != -1) || o_control.gameOver {
        	connect_break = true;
        }
        
        if !multiUser {
        	with(o_player) {
        		if newIp == ip
        			connect_break = true;
        	}
        }
        
        if connect_break {
        	var sendbuf = buffer_create(2, buffer_grow, 1);
			buffer_write(sendbuf, buffer_u8, EPlayer.excepted);
			sendUser(indexSocket,sendbuf);
        }
        
        if (!connect_break) {
        	
        	var reconectPoints = 0;
        	if gameMap[? newIp] == undefined
        		gameMap[? newIp] = reconectPoints;
        	else 
        		reconectPoints = gameMap[? newIp];
        		
			// Обновляем список подключенных у хоста
			ds_list_add(connects, indexSocket);
			// Инициализируем игрока и помещаем его на экран хоста
			var player = instance_create_depth(672, -30 + 55 * indexSocket + o_scroll_player.scrolled, 0, o_player); 
			// Обновляем список игроков
			ds_map_add(players, indexSocket, player);
			player._id = indexSocket;
			player.ip  = newIp;
			player.points = reconectPoints;
			
			var exchangeInfo = buffer_create(16, buffer_grow, 1);
			// Спрашиваем данные игрока
			buffer_write(exchangeInfo, buffer_u8, ENet.information);
			// Выдаём игроку идентификатор
	        buffer_write(exchangeInfo, buffer_u8, player._id);
	    	
			// Тут записывается текущее состояние игры
			buffer_write(exchangeInfo, buffer_u8, o_control.roundCurrent);
			buffer_write(exchangeInfo, buffer_u8, o_control.roundTotal);
			
			if (o_control.roundCurrent > 0) {
				for( var r = 0; r < o_control.roundCurrent; r++) {
					buffer_write(exchangeInfo, buffer_string, o_history.game_arr[@ r, EData.name]);
				}
	    	}
	    	
	    	buffer_write(exchangeInfo, buffer_u8, o_control.roundTime);
	    	buffer_write(exchangeInfo, buffer_u8, global.gameState);
	
	    	switch(global.gameState) {
				case ESong.prepare:
					buffer_write(exchangeInfo, buffer_string, o_history.game_arr[@ o_control.roundCurrent, EData.songLink]);
					buffer_write(exchangeInfo, buffer_u8, o_control.roundTime); 
					buffer_write(exchangeInfo, buffer_u8, o_history.game_arr[@ o_control.roundCurrent, EData.start]); 
					break;
				 case ESong.play:
				     buffer_write(exchangeInfo, buffer_f32, o_control.countdown);
				     break;
	    	}
	    	
	    	// А еще хост записывает инфу о себе
	    	buffer_write(exchangeInfo, buffer_string, o_control.nickname);
	    	if (o_control.avatar == -1) {
	    		buffer_write(exchangeInfo, buffer_u8, 0);
	    	} else {
	    		var sw = sprite_get_width(o_control.avatar);
	    		var sh = sprite_get_height(o_control.avatar);
	    		
	    		buffer_write(exchangeInfo, buffer_u8, 1);
	    		buffer_write(exchangeInfo, buffer_u16, sw);
	    		buffer_write(exchangeInfo, buffer_u16, sh);
	    		
	    		buffer_resize(exchangeInfo, buffer_tell(exchangeInfo) + sw*sh*4); 
	    		var surf = surface_create(sw, sh);
	    		surface_set_target(surf);
	    		draw_clear_alpha(c_black, 0);
	    		draw_sprite(o_control.avatar, 0, 0, 0);
	    		surface_reset_target();
	    		buffer_get_surface(exchangeInfo, surf, 0, buffer_tell(exchangeInfo), 0);
	    		surface_free(surf);
	    		buffer_seek(exchangeInfo, buffer_seek_end, 0);
	    	}
	    	
	        sendUser(indexSocket, exchangeInfo);
        }
        
        
        break;
    case network_type_disconnect:
        var indexSocket = async_load[? "socket"];
        
        ds_list_delete(connects, ds_list_find_index(connects, indexSocket));
        
        var player = players[? indexSocket];
        if (player != undefined) {
	        ds_map_delete(players, indexSocket);
	        
	        var playerDisconnect = buffer_create( 16, buffer_grow, 1);
	        buffer_write(playerDisconnect, buffer_u8, ENet.disconnected);
	        buffer_write(playerDisconnect, buffer_u8, player._id);
	        with (player) {
	        	instance_destroy();
			}
			sendAll(playerDisconnect);
        }
        break;
    case network_type_data:
        handlingDataHost(async_load[? "buffer"]);
        break;
}
