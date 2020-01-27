/// __lf_o_control_create_lambda_game_restore()
//!#lambda lambda_game_restore
{
	o_control.roundCurrent = 0;
	o_control.roundTotal = 0;
	o_control.countdown = -1;
	o_control.gameOver = false;
	o_control.hinted = false;
	global.gameState = ESong.next;
	
	audio_stop_sound(o_control.mediaPlayer);
	o_control.mediaPlayer = -1;
	audio_destroy_stream(o_control.songFile);
	o_control.songFile = -1;
	
	//ResetStatus();
	
	room_goto(rm_mainmenu);
}