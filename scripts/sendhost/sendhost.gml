/// @param buf
var buf = argument0;
network_send_packet( global.socket, buf, buffer_tell(buf));
buffer_delete( buf);
