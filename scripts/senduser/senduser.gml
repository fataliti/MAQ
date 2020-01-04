/// @param buf
/// @param socket
var buf = argument0, socket = argument1;

network_send_packet( socket, buf, buffer_tell(buf));
buffer_delete( buf);