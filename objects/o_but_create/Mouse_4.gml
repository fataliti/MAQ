audio_play_sound(a_but_next, 10, false);

global.server = network_create_server(network_socket_tcp, port, size);

if (global.server >= 0) {
    if (global.server != -1) {
        room_goto(rm_game);
    }
}