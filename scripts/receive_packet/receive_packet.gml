/// @param buf
var buf = argument0;

buffer_seek( buf, buffer_seek_start, 0);
var act = buffer_read( buf, buffer_u8);

switch( act) {
    case ENET.message_to_host:
        var msg = buffer_read( buf, buffer_string);
        ds_list_add( o_chat.messages, msg);
        var sendbuf = buffer_create( 64, buffer_grow,1);
        buffer_write( sendbuf, buffer_u8, ENET.messgae_to_player);
        buffer_write( sendbuf, buffer_string, msg);
        script_execute( sendall, sendbuf);
        break;
        
    case ENET.messgae_to_player:
        var msg = buffer_read( buf, buffer_string);
        ds_list_add( o_chat.messages, msg);
        break;
    
    case ENET.get_playerinfo:  
        
        my_id = buffer_read( buf, buffer_u8);
    
        var sendbuf = buffer_create( 64, buffer_grow, 1);
        buffer_write( sendbuf, buffer_u8, ENET.about_player);
        buffer_write( sendbuf, buffer_u8, my_id);
        buffer_write( sendbuf, buffer_string, o_control.my_nickname );
        network_send_packet( global.socket, sendbuf, buffer_tell( sendbuf));
        buffer_delete( sendbuf);
        break;
        
    case ENET.about_player:
        
        var answer_id = buffer_read( buf, buffer_u8);
        var new_nick = buffer_read( buf, buffer_string);
        with( o_player) {
            if answer_id == _id {
                nick = new_nick;
                trace_mf0  _id trace_mf1;   
            }
        }

        var game_buf = buffer_create( 128, buffer_grow, 1);
        buffer_write( game_buf, buffer_u8, ENET.send_all_new_player);
        
        var cnt = instance_number( o_player);
        buffer_write( game_buf, buffer_u8, cnt);
        with( o_player){
            buffer_write( game_buf, buffer_u8, _id);
            buffer_write( game_buf, buffer_string, nick);
        }
        script_execute( sendall, game_buf);
        
        break;
    
    case ENET.send_all_new_player:
    
        var rep = buffer_read( buf, buffer_u8);
        
        var new_id, new_nick, new_exist, new_player;
        repeat( rep) {
            new_exist = false;
            new_id = buffer_read( buf, buffer_u8);
            new_nick = buffer_read( buf, buffer_string);
            
            with( o_player) {
                if _id == new_id
                    new_exist = true;
            }
            
            if !new_exist {
                new_player = instance_create_layer( 700, 60 + 20 * new_id, "layer_game", o_player);
                new_player._id = new_id;
                new_player.nick = new_nick;
            }
        }
        break;
        
    case ENET.player_disconect:
        var del_id = buffer_read( buf, buffer_u8);
        
        with( o_player) {
            if _id == del_id
                instance_destroy();
        }
        
        break;
        
    case ENET.add_point:
        var add_id = buffer_read( buf, buffer_u8);
        
        with( o_player) {
            if _id == add_id
                points++;
        }
        break;
    
    /*
    case ENET.connect_as_host:
        is_host = true;
        break;
        
    ///Все хуйня надо по новой
        
    case ENET.coonect_as_player:
        var nick = buffer_read( buf, buffer_string);
        ///проверка банлиста, если такой будет
        
        
        var game_buf = buffer_create( 128, buffer_grow, 1);
        buffer_write( game_buf, buffer_u8, ENET.accept_player);
        
        var cnt = instance_number( o_player);
        buffer_write( game_buf, buffer_u8, cnt);
        with( o_player){
            buffer_write( game_buf, buffer_u8, self._id);
            buffer_write( game_buf, buffer_string, self.nick);
        }
        network_send_packet( connected_list[| ds_list_size( connected_list)-1], game_buf, buffer_tell(game_buf));
        buffer_delete( game_buf)

        var sendbuf = buffer_create( 64, buffer_grow,1);
        buffer_write( sendbuf, buffer_u8, ENET.new_player);
        buffer_write( sendbuf, buffer_u8, players_ids);
        buffer_write( sendbuf, buffer_string, nick);
        script_execute( sendall, sendbuf);

        players_ids++;
        break;
    case ENET.new_player:    
        var _id  = buffer_read( buf, buffer_u8);
        var nick = buffer_read( buf, buffer_string);
        
        var new_player = instance_create_layer( 700, 60 + 20 * instance_number( o_player), "layer_game", o_player);
        new_player.nick = nick;
        new_player._id  = _id;
        break;
    case ENET.accept_player:    

        var rep = buffer_read( buf, buffer_u8);
        repeat( rep) {
            var new_player = instance_create_layer( 700, 60 + 20 * instance_number( o_player), "layer_game", o_player);
            new_player._id  = buffer_read( buf, buffer_u8);
            new_player.nick = buffer_read( buf, buffer_string);
        }
        
        break;
    case ENET.non_accept_player: /// если ты в банлисте хостера или забанило
        if global.socket != -1 {
            network_destroy( global.socket);
            global.socket = -1;
           
            game_restart(); // <- возвращение в меню
        }
        break;
        
    */
}
