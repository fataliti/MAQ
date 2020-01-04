
color_mf0  c_orange color_mf1;
draw_rectangle( x, y, x + 192, y + 48, false);

if keyboard_check_pressed( vk_enter) {
    var answ = get_string("otver", "");
    
    if answ != ""{
        var sendbuf = buffer_create( 64, buffer_grow,1);
        buffer_write( sendbuf, buffer_u8, ENET.answer);
        buffer_write( sendbuf, buffer_u8, o_control.my_id);
        buffer_write( sendbuf, buffer_string, answ);
        sendhost( sendbuf);
    }
}