/// __lf_o_host_answer_create_lambda_show_answer()
//!#lambda lambda_show_answer
{

	var sendbuf = buffer_create( 8, buffer_grow, 1);
	buffer_write(sendbuf, buffer_u8, ESong.answer);
	
	var playrsCnt = instance_number(o_player);
	buffer_write(sendbuf, buffer_u8, playrsCnt);
	with(o_player){
		buffer_write(sendbuf, buffer_u8, _id);
		buffer_write(sendbuf, buffer_string, answer);
	}
	
	buffer_write(sendbuf, buffer_string, o_history.game_arr[@ o_control.roundCurrent, EData.name]);

	if !o_control.hinted  {
		instance_create_depth(0, 0, 0, o_right_answer);
		if o_control.songSprite != -1 {
			o_right_answer.answerSprite = o_control.songSprite; 
		}
	}
	
	o_right_answer.answerText = o_history.game_arr[@ o_control.roundCurrent, EData.name];
	
	audio_stop_sound(o_control.mediaPlayer);
	o_control.mediaPlayer = -1;
	audio_destroy_stream(o_control.songFile);
	o_control.songFile = -1;
	
	global.gameState = ESong.answer;
	o_control.countdown = 0;
	sendAll(sendbuf);
}