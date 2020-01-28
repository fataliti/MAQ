
if mouse_check_button_pressed(mb_left){
    if point_in_rectangle( mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) {
        textfield_active = true;
        keyboard_string = textfield_string;
    } else {
        textfield_active = false;
    }
}

if textfield_active {
    textfield_string = keyboard_string;
    if keyboard_check_pressed(vk_enter) {
        if textfield_string != "" {
            var msg = buffer_create(64, buffer_grow,1);
            var txt = o_control.nickname+": "+textfield_string;
            if (global.server == -1) {
                buffer_write(msg, buffer_u8, EChat.message);
                buffer_write(msg, buffer_string, txt);
                sendHost(msg);
            } else {
                //ds_list_insert(messages, 0, txt);
                buffer_write(msg, buffer_u8, EChat.message);
                buffer_write(msg, buffer_string, txt);
                sendAll(msg);
                
                var msgIns = instance_create_depth(x, y+235 + o_scroll_chat.scrolled, 0, o_chat_message);
                msgIns.message = txt;
                with(msgIns) {
                	script_execute(lambda_string_split);
                }
            }
            keyboard_string = "";
        }
    }
}