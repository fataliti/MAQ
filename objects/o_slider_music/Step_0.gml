
if coursorCollision(){
	var inc = (keyboard_check(vk_up) - keyboard_check(vk_down)) / 100;
	global.gain_music += inc;
	global.gain_music = clamp(global.gain_music, 0.03, 1);
	if inc != 0 {
		if !audio_is_playing(a_but_yes){
			var audio = audio_play_sound(a_but_yes, 10, false);
			audio_sound_gain(audio, global.gain_music, 0);
			ini_open("sound.conf");
			ini_write_real("game", "gain_music", global.gain_music);
			ini_close();
		}
	}
}

if activ {
	global.gain_music = (mouse_x - xp) / leng;
	global.gain_music = clamp(global.gain_music, 0.03, 1);
	
	if mouse_check_button_released(mb_left){
		activ = false;
		ini_open("sound.conf");
		ini_write_real("game", "gain_music", global.gain_music);
		ini_close();
	}
	
	if !audio_is_playing(a_but_yes){
		var audio = audio_play_sound(a_but_yes, 10, false);
		audio_sound_gain(audio, global.gain_music, 0);
	}
}