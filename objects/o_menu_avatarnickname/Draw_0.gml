
if (o_control.avatar != -1) {
	draw_sprite(o_control.avatar, 0, x, y);
} else {
	draw_sprite(s_noavatarbigg, 0, x, y);
}

draw_set_font(fnt_ru_15);
//Аутлайн по деревенски
draw_set_color(c_black);
for(var a = 0; a < 360; a += 360/8)
	draw_text(480 + lengthdir_x(1, a), y + 145 + lengthdir_y(1, a), o_control.nickname);
draw_set_color(c_white);
draw_text(480, y + 145, o_control.nickname);
draw_set_font(fnt_ru);