audio_play_sound(a_but_connect, 10, false);

var ip = localhost; //get_string( "IP: ", localhost);
var _port = port;   //get_integer( "Порт: ", port);

if (ip != "" && _port >= 0) {
    global.socket = network_create_socket(network_socket_tcp);
    var connected = network_connect(global.socket, ip, _port);
    
    if (connected < 0) {
        network_destroy(global.socket);
        global.socket = -1;
        show_message("Не удалось подключиться");
    } else {
		audio_stop_sound(global.bgm);
        room_goto(rm_gameclient);
    }
}