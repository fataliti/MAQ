
if avatar != -1 {
    draw_sprite(avatar, 0, x, y);
} else {
    draw_sprite(s_noavatar, 0, x, y);
}

draw_set_halign(fa_left);
draw_text(x, y-18, "Хост");
draw_text(x+42, y+16, nickname);
draw_set_halign(fa_center);