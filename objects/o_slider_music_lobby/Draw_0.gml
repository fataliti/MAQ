draw_self();

if see {
	var col = make_color_rgb(255 - 255*global.gain_music, 255*global.gain_music, 255*global.gain_music);
	color_mf0 col color_mf1;
	draw_line_width(xp, y, xp + leng, y, 4);
	draw_set_color(c_white);
	draw_circle( xp + leng * global.gain_music, y, 6, false);
	
	if mouse_check_button_pressed(mb_left) && point_in_circle(mouse_x, mouse_y, xp + leng * global.gain_music, y, 8)
		activ = true;
}