color_mf0 c_white color_mf1;
draw_rectangle(bbox_left, bbox_top + 3, bbox_right, bbox_bottom -3, false);

color_mf0 make_color_rgb(79, 93, 115) color_mf1;
draw_circle(xp, y, 4, false);
draw_circle(xp+leng, y, 4, false);
draw_line_width(xp, y, xp+leng, y, 8);

color_mf0 make_color_rgb(71, 81, 98) color_mf1;
draw_set_alpha(0.5);
draw_circle( xp + leng * global.gain_bgm - 3, y, 9, false);
color_mf0 c_white color_mf1;
draw_set_alpha(1);
draw_circle( xp + leng * global.gain_bgm, y, 9, false);

if mouse_check_button_pressed(mb_left) && point_in_circle(mouse_x, mouse_y, xp + leng * global.gain_bgm, y, 8)
	activ = true;



draw_set_halign(fa_right);
draw_text(bbox_left - 10, y, "ФОН");
draw_set_halign(fa_center);