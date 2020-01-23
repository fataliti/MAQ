
if mouse_check_button_pressed(mb_left) {
	if coursorCollision()
		see = true;
	
	if !point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, xp+leng+10, bbox_bottom) {
		see = false;
	}
}

if activ {
	global.gain_snd = (mouse_x - xp) / leng;
	global.gain_snd = clamp(global.gain_snd, 0.05, 1);
	
	if mouse_check_button_released(mb_left){
		activ = false;
		ini_open("game_sets.ini");
		ini_write_real("game","gain_snd",global.gain_snd);
		ini_close();
		
		
	}
	/*
	if audio_is_playing(ЗВУК)
		audio_sound_gain(ЗВУК, global.gain_snd, 0);
	*/
}