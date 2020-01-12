draw_text( 480, 15, string(roundCurrent+1) +"/"+ string(roundTotal+1));

if (countdown > 0) {
    countdown -= delta_time / 1000000;
    color_mf0  c_red color_mf1;
    draw_text(480, 40, ceil(countdown));
    
    if global.server != -1 {
	    if (countdown <= 0) {
	        var timeOver = buffer_create(8, buffer_grow, 1);
	        buffer_write(timeOver, buffer_u8, ESong.stop);
	        buffer_write(timeOver, buffer_string, o_history.game_arr[@ roundCurrent, EData.pic]);
	        buffer_write(timeOver, buffer_string, o_history.game_arr[@ roundCurrent, EData.name]);
	        sendAll(timeOver);
	    }
    }
}

if (room == rm_mainmenu || room == rm_lobby || room == rm_settings) {
	if (avatar != -1) {
		draw_sprite(avatar, 0, 480 - avatarSize / 2, 50);
	} else {
		draw_sprite(s_noavatar, 0, 480 - avatarSize / 2, 145);
	}
	draw_text(480, 200, nickname);
}
