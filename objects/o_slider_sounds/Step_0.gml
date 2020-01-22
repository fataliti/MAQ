
if activ {
	global.gain_sfx = (mouse_x - xp) / leng;
	global.gain_sfx = clamp(global.gain_sfx, 0, 1);
	
	if mouse_check_button_released(mb_left)
		activ = false;
}