
if coursorCollision(){
	var inc = (mouse_wheel_up() - mouse_wheel_down()) / 50;
	global.gain_se += inc;
	global.gain_se = clamp(global.gain_se, 0, 1);
	if inc != 0 {
		
		if !audio_is_playing(sound)
			sound = playSe(vol_test2);
		else 
			audio_sound_gain(sound, global.gain_se, 0);
			
		alarm[0] = 5;
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
	
	if !audio_is_playing(sound)
		sound = playSe(vol_test2);
	else 
		audio_sound_gain(sound, global.gain_se, 0);
}