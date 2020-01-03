/// @param buf
var buf = argument0;

buffer_seek( buf, buffer_seek_start, 0);
var act = buffer_read( buf, buffer_u8);
trace_mf0 act trace_mf1;

        
sendall = __lf_receive_packet_sendall;
        

switch( act) {
    case ENET.message_to_host:
        var msg = buffer_read( buf, buffer_string);
        trace_mf0 msg trace_mf1;
        var sendbuf = buffer_create( 24, buffer_grow,1);
        buffer_write( sendbuf, buffer_u8, ENET.messgae_to_player);
        buffer_write( sendbuf, buffer_string, msg);
        script_execute( __lf_receive_packet_sendall, sendbuf);
        
        break;
    case ENET.messgae_to_player:
        
        var msg = buffer_read( buf, buffer_string);
        trace_mf0 msg trace_mf1;
        ds_list_add( o_chat.messages, msg);
        
        break;
}
