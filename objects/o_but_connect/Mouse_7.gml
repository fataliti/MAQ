playSe(a_but_mainmenu);

var ip = get_string("IP: ", localhost);
var _port = get_integer( "Порт: ", port);

if (ip != "" && _port >= 0) {
    global.socket = network_create_socket(network_socket_tcp);
    var connected = network_connect(global.socket, ip, _port);
    
    if (connected < 0) {
        network_destroy(global.socket);
        global.socket = -1;
        show_message("Не удалось подключиться");
    } else {
    	o_control.audioOn = false;
		audio_stop_sound(global.bgm);
        room_goto(rm_gameclient);
    }
}