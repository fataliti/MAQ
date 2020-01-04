
if keyboard_check_pressed( vk_space){

    var msg = get_string("enter ur message", "");
    
    if msg != "" {
        var sendbuf = buffer_create( 64, buffer_grow,1);
        if !o_control.is_host {
            buffer_write( sendbuf, buffer_u8, ENET.message);
            buffer_write( sendbuf, buffer_string, msg);
            sendhost( sendbuf);
        } else {
            ds_list_add( messages, msg);
            buffer_write( sendbuf, buffer_u8, ENET.message);
            buffer_write( sendbuf, buffer_string, msg);
            sendall( sendbuf);
        }
    }
    
}