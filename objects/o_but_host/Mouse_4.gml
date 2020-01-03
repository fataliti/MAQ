
global.server = network_create_server( network_socket_tcp, testport, 32);

if global.server  >= 0 {
    trace_mf0 "server_up" trace_mf1;
    /*
    global.socket = network_create_socket( network_socket_tcp);
    var connected = network_connect( global.socket, localhost, testport);

    var sendbuf = buffer_create( 64, buffer_grow, 1);
    buffer_write( sendbuf, buffer_u8, ENET.connect_as_host);
    buffer_write( sendbuf, buffer_string, "my_nickname");
    network_send_packet( global.socket, sendbuf, buffer_tell( sendbuf));
    buffer_delete( sendbuf);
    */
    o_control.is_host = true;
    instance_activate_layer( "layer_game");
    instance_deactivate_layer( "layer_lobby");
}
