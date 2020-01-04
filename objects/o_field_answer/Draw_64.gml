color_mf0  c_orange color_mf1;
draw_rectangle( x, y, x + 192, y + 48, false);

if (keyboard_check_pressed(vk_enter)) {
    var field = get_string("Ответ: ", "");
    
    if (field != "") {
        var answer = buffer_create(64, buffer_grow,1);
        buffer_write(answer, buffer_u8, EPlayer.answer);
        buffer_write(answer, buffer_u8, o_control._id);
        buffer_write(answer, buffer_string, field);
        sendHost(answer);
    }
}