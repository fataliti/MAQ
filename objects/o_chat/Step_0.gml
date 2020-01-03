
if keyboard_check_pressed( vk_space){

    var msg = get_string("enter ur message", "");
    
    if msg != "" {
        var sendbuf = buffer_create( 64, buffer_grow,1);
        buffer_write( sendbuf, buffer_u8, ENET.message_to_host);
        buffer_write( sendbuf, buffer_string, msg);
        network_send_packet( global.socket, sendbuf, buffer_tell(sendbuf));
        buffer_delete(sendbuf);
    }

}