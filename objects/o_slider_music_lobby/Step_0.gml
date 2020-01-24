
if mouse_check_button_pressed(mb_left) {
	if coursorCollision()
		see = true;
	
	if !point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, xp+leng+10, bbox_bottom) {
		see = false;
	}
}

if activ {
	global.gain_music = (mouse_x - xp) / leng;
	global.gain_music = clamp(global.gain_music, 0.05, 1);
	
	if mouse_check_button_released(mb_left){
		activ = false;
		ini_open("sound.conf");
		ini_write_real("game", "gain_music", global.gain_music);
		ini_close();
		
		
	}
	/*
	if audio_is_playing(ЗВУК)
		audio_sound_gain(ЗВУК, global.gain_snd, 0);
	*/
}