
if avatar != -1 {
    draw_sprite(avatar, 0, x, y);
} else {
    draw_sprite(s_noavatar, 0, x, y);
}

draw_text(x, y-24, "Хост");
draw_text(x+64, y+16, nickname);