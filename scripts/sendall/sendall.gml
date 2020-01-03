/// @param buf
var buf = argument0;

_list = o_control.connected_list ;

for( var a = 0; a < ds_list_size( _list); a++) {
    network_send_packet( _list[| a], buf, buffer_tell(buf));
}
buffer_delete( buf);
