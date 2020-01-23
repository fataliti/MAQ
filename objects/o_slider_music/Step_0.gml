
if activ {
	global.gain_snd = (mouse_x - xp) / leng;
	global.gain_snd = clamp(global.gain_snd, 0.05, 1);
	
	if mouse_check_button_released(mb_left){
		activ = false;
		ini_open("game_sets.ini");
		ini_write_real("game","gain_snd",global.gain_snd);
		ini_close();
	}
	
	if !audio_is_playing(a_but_yes){
		var audio = audio_play_sound(a_but_yes, 10, false);
		audio_sound_gain(audio, global.gain_snd, 0);
	}
	
}