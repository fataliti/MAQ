
draw_text( 150, 15, string(roundCurrent+1) +"/"+ string(roundTotal+1));

if (countdown > 0) {
    countdown -= delta_time / 1000000;
    color_mf0  c_red color_mf1;
    draw_text(60, 15, countdown);
    
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



