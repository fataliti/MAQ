color_mf0 c_white color_mf1;

if (avatar != -1) {
    draw_sprite_ext(avatar, 0, x, y, 32 / sprite_get_width(avatar), 32/ sprite_get_height(avatar), 0, c_white, 1);
} else {
    draw_sprite(s_noavatar, 0, x, y);
}

draw_set_halign(fa_left);
draw_text(x, y-18, "Хост");
draw_text(x+42, y+16, nickname);
draw_set_halign(fa_center);


if (loading < 1) { draw_set_color(c_green); } else { draw_set_color(c_lime); }
draw_rectangle(x + 168, y, x + 178, y + 29, true);
draw_rectangle(x + 168, y + 29 - 29 * loading, x + 178, y + 29 , false);
