audio_play_sound(a_but_host, 10, false);




var sendbuf = buffer_create( 8, buffer_grow, 1);

if  global.gameState == ESong.play {
	
	
	buffer_write(sendbuf, buffer_u8, ESong.answer);

	var playrsCnt = instance_number(o_player);
	buffer_write(sendbuf, buffer_u8, playrsCnt);
	with(o_player){
		buffer_write(sendbuf, buffer_u8, _id);
		buffer_write(sendbuf, buffer_string, answer);
	}
	
	buffer_write(sendbuf, buffer_string, o_history.game_arr[@ o_control.roundCurrent, EData.pic]);
	buffer_write(sendbuf, buffer_string, o_history.game_arr[@ o_control.roundCurrent, EData.name]);
	
	instance_create_depth(0, 0, 0, o_right_answer);
	if !o_control.hinted {
		o_host.songPic = http_get_file(o_history.game_arr[@ o_control.roundCurrent, EData.pic], "guess.pic");
	}
	o_right_answer.answerText = o_history.game_arr[@ o_control.roundCurrent, EData.name];
	audio_stop_sound(o_host.mediaPlayer);
	o_host.mediaPlayer = -1;
	audio_destroy_stream(o_host.songFile);
	
	global.gameState = ESong.answer;
	o_control.countdown = 0;
	sendAll(sendbuf);
	
} else {
    
    if o_control.roundCurrent == o_control.roundTotal{
	    //Показывается пабедитель
	    //Наверное
	    trace_mf0 "ИГРА ЗАКОНЧЕНА" trace_mf1;
	    exit;
	}
    
    buffer_write(sendbuf, buffer_u8, ESong.next);
    o_control.roundCurrent++;
    o_control.hinted = false;
    with(o_player)		 {answer = "";}
    with(o_right_answer) {instance_destroy();}
    
    global.gameState = ESong.next;
    
    sendAll(sendbuf);
    instance_activate_object(o_host_prep);
    instance_deactivate_object(o_host_answ);
    instance_deactivate_object(self);
}

