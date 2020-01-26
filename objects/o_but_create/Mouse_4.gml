playSe(a_but_create);

global.server = network_create_server(network_socket_tcp, port, size);

if (global.server >= 0) {
	audio_stop_sound(global.bgm);
    room_goto(rm_gamehost);
} else {
    show_message("Не удалось создать сервер");
}