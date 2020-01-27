if (global.socket != -1 && room == rm_gameclient) {
	network_destroy(global.socket);
}
if (global.socket != -1 && room == rm_gamehost) {
	network_destroy(global.socket);
}