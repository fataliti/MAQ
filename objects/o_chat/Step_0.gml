if (keyboard_check_pressed(vk_space)) {

    var words = get_string("Я: ", "");
    
    if (words != "") {
        var msg = buffer_create(64, buffer_grow,1);
        if (global.server == -1) {
            buffer_write(msg, buffer_u8, EChat.message);
            buffer_write(msg, buffer_string, words);
            sendHost(msg);
        } else {
            ds_list_add(messages, msg);
            buffer_write(msg, buffer_u8, EChat.message);
            buffer_write(msg, buffer_string, words);
            sendAll(msg);
        }
    }
}