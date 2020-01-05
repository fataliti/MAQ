/// @param indexSocket
/// @param buffer
var indexSocket = argument0, buffer = argument1;

network_send_packet(indexSocket, buffer, buffer_tell(buffer));
buffer_delete(buffer);
