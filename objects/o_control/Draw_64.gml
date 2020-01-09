
draw_text( 150, 15, string(roundCurrent+1) +"/"+ string(roundTotal+1));

if (countdown > 0) {
    countdown -= delta_time / 1000000;
    color_mf0  c_red color_mf1;
    draw_text(60, 15, countdown);
    
    if global.server != -1 {
	    if (countdown <= 0) {
	        var timeOver = buffer_create(8, buffer_grow, 1);
	        buffer_write(timeOver, buffer_u8, ESong.stop);
	        sendAll(timeOver);
	    }
    }
}

if (global.server != -1) {
    var lmb = mouse_check_button_pressed(mb_left);

    color_mf0 c_green color_mf1;
    with(o_player) {
        draw_rectangle(x - 32, y, x, y+16, false);
    }
    
    color_mf0 c_red color_mf1;
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
            var action = buffer_create(16, buffer_grow, 1);
            buffer_write(action, buffer_u8, act);
            buffer_write(action, buffer_u8, victimId);
            sendAll(action);
        }
    }
    
}

