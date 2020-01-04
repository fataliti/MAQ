var ip = localhost; //get_string( "IP: ", localhost);
var _port = 10080;   //get_integer( "Порт: ", port);

if (ip != "" && _port >= 0) {
    global.socket = network_create_socket(network_socket_tcp);
    var connected = network_connect(global.socket, ip, _port);
    
    if (connected < 0) {
        network_destroy(global.socket);
        global.socket = -1;
    } else {
        instance_activate_layer("layer_game");
        instance_deactivate_layer("layer_lobby");
        
        with(o_history) {
            instance_destroy();
		}
    }
}