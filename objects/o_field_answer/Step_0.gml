
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
        	script_execute(lambda_answer_send);
            textfield_active = false;
        }
    }
}