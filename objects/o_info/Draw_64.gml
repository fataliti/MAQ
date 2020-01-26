
var ctrl = o_control;
draw_text(x, y + 3, string(ctrl.roundCurrent+1) +" / "+ string(ctrl.roundTotal+1));

if (ctrl.countdown > 0) {
    ctrl.countdown -= delta_time / 1000000;
    color_mf0  c_red color_mf1;
    draw_text(480, 45, ceil(ctrl.countdown));
    
    
    
    if global.server != -1 {
	    if (ctrl.countdown <= 0) {
	    	
	    	audio_stop_sound(ctrl.mediaPlayer);
	    	ctrl.mediaPlayer = -1;
	    	audio_destroy_stream(ctrl.songFile);
	        ctrl.songFile = -1;
	    	
	        var timeOver = buffer_create(8, buffer_grow, 1);
	        buffer_write(timeOver, buffer_u8, ESong.stop);
	        //buffer_write(timeOver, buffer_string, o_history.game_arr[@ ctrl.roundCurrent, EData.pic]);
	        //buffer_write(timeOver, buffer_string, o_history.game_arr[@ ctrl.roundCurrent, EData.name]);
	        sendAll(timeOver);
	    }
    }
}

