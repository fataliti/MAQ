/// __lf_receive_packet_sendall( buf)
//!#lambda sendall( $)
var buf = argument0;
 {
    for( var a = 0; a < ds_list_size(connected_list); a++) {
        network_send_packet( connected_list[| a], buf, buffer_tell(buf));
    }
    buffer_delete( buf);
}