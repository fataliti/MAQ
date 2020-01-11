draw_sprite(s_podklad, 0, x, y);
if (avatar != -1) {
    draw_sprite(avatar, 0, x, y,);
} else {
    draw_sprite(s_noavatar, 0, x, y,);
}
// Прогресс загрузки песни игроком
if loading < 1 { draw_set_color(c_blue);} else {draw_set_color(c_green);}
draw_rectangle(x+32, y, x + 96, y + 10, true);
draw_rectangle(x+32, y, x + 32 + 64 * loading, y + 10, false);

draw_set_halign(fa_left);
// Ник и очки
draw_set_color(c_white);
draw_text(x + 38, y + 23, nickname + ": " + string(points));
// Ответ игрока
draw_text(x + 38, y + 5, answer);
// Статус связи
draw_set_color(c_red);
draw_text(x + 128, y + 23, ping);
draw_set_halign(fa_center);