
var ip = localhost; //get_string( "Введи йапи", "");
var port = testport;   //get_integer( "Введи порт", 0);

if ip != "" && port >= 0 {
    global.socket = network_create_socket( network_socket_tcp);
    var connected = network_connect( global.socket, ip, port);
    
    if connected < 0 {
        network_destroy(global.socket);
        global.socket = -1;
        trace_mf0 "cant connect" trace_mf1;
    } else {
        instance_activate_layer( "layer_game");
        instance_deactivate_layer( "layer_lobby");
        trace_mf0 "connected" trace_mf1;
        /*
        var sendbuf = buffer_create( 64, buffer_grow, 1);
        buffer_write( sendbuf, buffer_u8, ENET.coonect_as_player);
        buffer_write( sendbuf, buffer_string, o_control.my_nickname );
        network_send_packet( global.socket, sendbuf, buffer_tell( sendbuf));
        buffer_delete( sendbuf);
        */
    }
}