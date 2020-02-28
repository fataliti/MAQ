if !point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, xp+leng+20, bbox_bottom) {
	see = false;
}

if see {
	var inc = (mouse_wheel_up() - mouse_wheel_down()) / 50;
	global.gain_music += inc;
	global.gain_music = clamp(global.gain_music, 0, 1);
	if inc != 0 {
		if audio_is_playing(o_control.mediaPlayer)
		audio_sound_gain(o_control.mediaPlayer, global.gain_music, 0);
		alarm[0] = 5;
	}
}

if (activ) {
	global.gain_music = (mouse_x - xp) / leng;
	global.gain_music = clamp(global.gain_music, 0, 1);
	
	if (mouse_check_button_released(mb_left)) {
		activ = false;
		ini_open("sound.conf");
		ini_write_real("game", "gain_music", global.gain_music);
		ini_close();
	}
	
	if audio_is_playing(o_control.mediaPlayer)
		audio_sound_gain(o_control.mediaPlayer, global.gain_music, 0);
}