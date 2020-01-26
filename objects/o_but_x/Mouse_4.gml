room_goto(rm_mainmenu);

if o_control.mediaPlayer != -1 {
	audio_stop_sound(o_control.mediaPlayer);
	o_control.mediaPlayer = -1;
	audio_destroy_stream(o_control.songFile);
	o_control.songFile = -1;
}