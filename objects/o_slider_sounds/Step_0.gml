
if coursorCollision(){
	var inc = (keyboard_check(vk_up) - keyboard_check(vk_down)) / 100;
	global.gain_se += inc;
	global.gain_se = clamp(global.gain_se, 0, 1);
	if inc != 0 {
		if !audio_is_playing(a_but_yes){
			var audio = audio_play_sound(a_but_yes, 10, false);
			audio_sound_gain(audio, global.gain_se, 0);
			ini_open("sound.conf");
			ini_write_real("game", "gain_se", global.gain_se);
			ini_close();
		}
	}
}

if activ {
	global.gain_se = (mouse_x - xp) / leng;
	global.gain_se = clamp(global.gain_se, 0, 1);
	
	if mouse_check_button_released(mb_left){
		activ = false;
		ini_open("sound.conf");
		ini_write_real("game", "gain_se", global.gain_se);
		ini_close();	
	}
	
	if !audio_is_playing(a_but_yes){
		var audio = audio_play_sound(a_but_yes, 10, false);
		audio_sound_gain(audio, global.gain_se, 0);
	}
}