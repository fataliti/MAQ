
if mouse_check_button_pressed(mb_left){
    if o_control.countdown > 0 && point_in_rectangle( mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)  {
        textfield_active = true;
        keyboard_string = textfield_string;
    } else {
        textfield_active = false;
    }
}

if textfield_active {
    textfield_string = keyboard_string;
    if keyboard_check_pressed(vk_enter) {
        if (textfield_string != "") {
            var answerBuf = buffer_create(64, buffer_grow,1);
            buffer_write(answerBuf, buffer_u8, EPlayer.answer);
            buffer_write(answerBuf, buffer_u8, o_client._id);
            buffer_write(answerBuf, buffer_string, textfield_string);
            sendHost(answerBuf);
            textfield_active = false;
        }
    }
}