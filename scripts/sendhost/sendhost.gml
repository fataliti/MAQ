/// @param buffer
var buffer = argument0;
network_send_packet(global.socket, buffer, buffer_tell(buffer));
buffer_delete(buffer);