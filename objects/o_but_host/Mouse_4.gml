
global.server = network_create_server( network_socket_tcp, testport, 32);

if global.server  >= 0 {
    trace_mf0 "server_up" trace_mf1;
    
    global.socket = network_create_socket( network_socket_tcp);
    var connected = network_connect( global.socket, localhost, testport);
    
    instance_activate_layer( "layer_game");
    instance_deactivate_layer( "layer_lobby");
}
