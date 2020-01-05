if (global.socket != -1) {
	network_destroy(global.socket);
}
if (global.server != -1) {
	network_destroy(global.server);
}

if avatar != -1 {
	sprite_delete( avatar);
}