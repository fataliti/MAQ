
if activ {
	global.gain_sfx = (mouse_x - xp) / leng;
	global.gain_sfx = clamp(global.gain_sfx, 0, 1);
	
	if mouse_check_button_released(mb_left){
		activ = false;
		ini_open("game_sets.ini");
		ini_write_real("game","gain_sfx",global.gain_sfx);
		ini_close();	
	}
	
	if !audio_is_playing(a_but_yes){
		var audio = audio_play_sound(a_but_yes, 10, false);
		audio_sound_gain(audio, global.gain_sfx, 0);
	}
}