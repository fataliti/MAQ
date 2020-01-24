draw_self();

if coursorCollision() || activ{
	var col = make_color_rgb(255 - 255*global.gain_se, 255*global.gain_se, 255*global.gain_se);
	color_mf0 col color_mf1;
	draw_line_width(x-60, y, x+60, y, 4);
	draw_set_color(c_white);
	draw_circle( xp + leng * global.gain_se, y, 6, false);
	
	if mouse_check_button_pressed(mb_left) && point_in_circle(mouse_x, mouse_y, xp + leng * global.gain_se, y, 8)
		activ = true;
} else 
	draw_text(x, y, "ЭФФЕКТЫ");