
if activ {
	global.gain_snd = (mouse_x - xp) / leng;
	global.gain_snd = clamp(global.gain_snd, 0.05, 1);
	
	if mouse_check_button_released(mb_left)
		activ = false;
}