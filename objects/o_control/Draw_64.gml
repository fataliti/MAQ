if (countdown > 0) {
    countdown -= delta_time / 1000000;
    color_mf0  c_red color_mf1;
    draw_text(15, 15, countdown);
    
    if (countdown <= 0) {
        var timeOver = buffer_create(8, buffer_grow, 1);
        buffer_write(timeOver, buffer_u8, ESong.stop);
        sendAll(timeOver);
    }
}

if (global.server != -1) {
    var lmb = mouse_check_button_pressed(mb_left);
    
    color_mf0  c_red color_mf1;
    draw_rectangle(x, y, x + 32, y + 16, false);
    draw_rectangle(x + 48, y, x + 80, y + 16, false);
    draw_rectangle(x + 96, y, x + 128, y + 16, false);
    draw_rectangle(x + 144, y, x + 176, y + 16, false);
    color_mf0  c_white color_mf1;
    draw_text(x, y, "Prepare");
    draw_text(x + 48, y + 0, "Start");
    draw_text(x + 96, y + 0, "Answer");
    draw_text(x + 144, y + 0, "Next");

    if (lmb) {
    	// Подготовка к раунду
        if (point_in_rectangle(mouse_x, mouse_y, x, y, x + 32, y + 16)) {
            var sendbuf = buffer_create( 8, buffer_grow, 1);
            buffer_write( sendbuf, buffer_u8, ESong.prepare);
            //buffer_write( sendbuf,  ); // Зашивается инфа по раунду
            sendAll(sendbuf);
        }
        // Начать игру
        if (point_in_rectangle(mouse_x, mouse_y, x + 48, y, x + 80, y + 16)) {
            var sendbuf = buffer_create( 8, buffer_grow, 1);
            buffer_write(sendbuf, buffer_u8, ESong.play);
            countdown = countdownDefault;
            sendAll(sendbuf);
        }
        // Показать ответ
        if (point_in_rectangle(mouse_x, mouse_y, x + 96, y, x + 128, y + 16)) {
            var sendbuf = buffer_create( 8, buffer_grow, 1);
            buffer_write(sendbuf, buffer_u8, EPlayer.answer);
            sendAll(sendbuf);
        }
        // Следующий трек
        if (point_in_rectangle(mouse_x, mouse_y, x + 144, y, x + 176, y + 16)) {
            var sendbuf = buffer_create( 8, buffer_grow, 1);
            buffer_write(sendbuf, buffer_u8, ESong.next);
            roundCurrent++;
            sendAll(sendbuf);
        }
    }
    

    color_mf0  c_green color_mf1;
    with(o_player) {
        draw_rectangle(x - 32, y, x, y+16, false);
    }
    
    color_mf0  c_red color_mf1;
    with(o_player) {
        draw_rectangle(x - 64, y, x-33, y+16, false);
    }
    
    if (lmb) {
        var victimId = -1;
        var act = -1;
        
        with (o_player) {
            if (point_in_rectangle(mouse_x, mouse_y, x - 32, y, x, y + 16)) {
                victimId = _id;
                act = EPlayer.point;
                points++;
            }
            
            if (point_in_rectangle(mouse_x, mouse_y, x - 64, y, x - 33, y + 16)) {
                victimId = _id;
                act = EPlayer.kick;
            }
        }
        
        if (victimId != -1) {
            var sendbuf = buffer_create(16, buffer_grow, 1);
            buffer_write(sendbuf, buffer_u8, act);
            buffer_write(sendbuf, buffer_u8, victimId);
            sendAll(sendbuf);
        }
    }
    
}
