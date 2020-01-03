/// @param buf
var buf = argument0;

buffer_seek( buf, buffer_seek_start, 0);
var act = buffer_read( buf, buffer_u8);
trace_mf0 act trace_mf1;

        
sendall = __lf_receive_packet_sendall;
        
switch( act) {
    case ENET.message_to_host:
        var msg = buffer_read( buf, buffer_string);
        trace_mf0 msg trace_mf1;
        var sendbuf = buffer_create( 64, buffer_grow,1);
        buffer_write( sendbuf, buffer_u8, ENET.messgae_to_player);
        buffer_write( sendbuf, buffer_string, msg);
        script_execute( __lf_receive_packet_sendall, sendbuf);
        break;
        
    case ENET.messgae_to_player:
        var msg = buffer_read( buf, buffer_string);
        trace_mf0 msg trace_mf1;
        ds_list_add( o_chat.messages, msg);
        break;
    
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
        script_execute( __lf_receive_packet_sendall, sendbuf);

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
}
