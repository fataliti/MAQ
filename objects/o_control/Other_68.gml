
var type = async_load[? "type"];

switch( type) {
    case network_type_connect:
        var sock = async_load[? "socket"];
        ds_list_add( connected_list, sock);
        
        var ins = instance_create_layer( 650, 60 + 30 * sock, "layer_game", o_player);
        ds_map_add( players_map, sock, ins);
        ins._id = sock;
        
        var sendbuf = buffer_create( 8, buffer_grow, 1);
        buffer_write( sendbuf, buffer_u8, ENET.get_playerinfo);
        buffer_write( sendbuf, buffer_u8, sock);
        network_send_packet( sock, sendbuf, buffer_tell( sendbuf));
        buffer_delete( sendbuf);
        
        break;
    case network_type_disconnect:

        var sock = async_load[? "socket"];
        ds_list_delete( connected_list, ds_list_find_index( connected_list, sock));
        
        var del_ins = players_map[? sock];
        var del_id  = del_ins._id;
        with( del_ins) {
            instance_destroy();
        }
        ds_map_delete( players_map, sock);
        
        var sendbuf = buffer_create( 16, buffer_grow, 1);
        buffer_write( sendbuf, buffer_u8, ENET.player_disconect);
        buffer_write( sendbuf, buffer_u8, del_id);
        sendall( sendbuf);
        
        break;
    case network_type_data:
        receive_packet( async_load[? "buffer"]);
        break;
}