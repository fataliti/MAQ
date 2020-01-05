// Статус подключения
var type = async_load[? "type"];

switch(type) {
    case network_type_connect:
        var indexSocket = async_load[? "socket"];
		// Обновляем список подключенных у хоста
        ds_list_add(connects, indexSocket);
        // Инициализируем игрока и помещаем его на экран хоста
        var player = instance_create_depth(650, 60 + 30 * indexSocket, 0, o_player); 
		// Обновляем список игроков
		ds_map_add(players, indexSocket, player);
		player._id = indexSocket;
        
        var exchangeInfo = buffer_create(16, buffer_grow, 1);
		// Спрашиваем данные игрока
        buffer_write(exchangeInfo, buffer_u8, ENet.information);
		// Выдаём игроку идентификатор
        buffer_write(exchangeInfo, buffer_u8, player._id);
       
        sendUser(indexSocket, exchangeInfo);
        break;
    case network_type_disconnect:
        var indexSocket = async_load[? "socket"];
        
        ds_list_delete(connects, ds_list_find_index(connects, indexSocket));
        
        var player = players[? indexSocket];
        ds_map_delete(players, indexSocket);
        
        var playerDisconnect = buffer_create( 16, buffer_grow, 1);
        buffer_write(playerDisconnect, buffer_u8, ENet.disconnected);
        buffer_write(playerDisconnect, buffer_u8, player._id);
        
        with (player) {
        	instance_destroy();
		}
		
		sendAll(playerDisconnect);

        break;
    case network_type_data:
        handlingData(async_load[? "buffer"]);
        break;
}