if coursorCollision(){
	var inc = (mouse_wheel_up() - mouse_wheel_down()) / 50;
	global.gain_music += inc;
	global.gain_music = clamp(global.gain_music, 0, 1);
	if inc != 0 {
	
		if !audio_is_playing(sound)
			sound = playSe(vol_test1);
		else 
			audio_sound_gain(sound, global.gain_music, 0);
			
		alarm[0] = 5;
	}
}

if activ {
	global.gain_music = (mouse_x - xp) / leng;
	global.gain_music = clamp(global.gain_music, 0, 1);
	
	if mouse_check_button_released(mb_left){
		activ = false;
		ini_open("sound.conf");
		ini_write_real("game", "gain_music", global.gain_music);
		ini_close();
	}
	
	if !audio_is_playing(sound)
		sound = playSe(vol_test1);
	else 
		audio_sound_gain(sound, global.gain_music, 0);
	
}

if !activ && !coursorCollision() 
	audio_stop_sound(sound);