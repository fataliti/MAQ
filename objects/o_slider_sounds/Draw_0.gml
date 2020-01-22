draw_self();

if coursorCollision() || activ{
	color_mf0 c_aqua color_mf1;
	draw_line_width(x-60, y, x+60, y, 4);
	draw_set_color(c_white);
	draw_circle( xp + leng * global.gain_sfx, y, 4, false);
	
	if mouse_check_button_pressed(mb_left) && point_in_circle(mouse_x, mouse_y, xp + leng * global.gain_sfx, y, 6)
		activ = true;
} else 
	draw_text(x, y, "ЭФФЕКТЫ");