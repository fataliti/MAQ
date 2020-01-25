audio_play_sound(a_but_host, 10, false);


if o_control.countdown > 0 {
	var sendbuf = buffer_create( 128, buffer_grow, 1);
	buffer_write(sendbuf, buffer_u8, ESong.hint);
	buffer_write(sendbuf, buffer_string, o_history.game_arr[@ o_control.roundCurrent, EData.pic]);
	sendAll(sendbuf);
	
	o_host.songPic = http_get_file(o_history.game_arr[@ o_control.roundCurrent, EData.pic], "guess.pic");
	instance_create_depth(0, 0, 0, o_right_answer);
	o_control.hinted = true;
} 
