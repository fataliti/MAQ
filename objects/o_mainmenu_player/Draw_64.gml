
if (o_control.avatar != -1) {
	draw_sprite_ext(o_control.avatar, 0, x, y, avatarSize/sprite_get_width(o_control.avatar) , avatarSize/sprite_get_height(o_control.avatar), 0, c_white, 1);
} else {
	draw_sprite(s_noavatar_big, 0, x, y);
}

draw_set_font(fnt_ru_15);

draw_set_color(c_black);
for(var a = 0; a < 360; a += 360/8)
	draw_text(480 + lengthdir_x(1, a), y + 145 + lengthdir_y(1, a), o_control.nickname);
draw_set_color(c_white);
draw_text(480, y + 145, o_control.nickname);
draw_set_font(fnt_ru);
