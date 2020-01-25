if (avatar != -1) {
    draw_sprite(avatar, 0, x, y);
} else {
    draw_sprite(s_noavatar, 0, x, y);
}
// Прогресс загрузки песни игроком
if (loading < 1) { draw_set_color(c_green); } else { draw_set_color(c_lime); }
draw_rectangle(x + 148, y, x + 158, y + 29, true);
draw_rectangle(x + 148, y + 29 - 29 * loading, x + 158, y + 29 , false);

draw_set_halign(fa_left);
// Ник и очки
draw_set_color(c_white);
draw_text(x + 38, y + 7, nickname);
draw_text(x + 38, y + 24, "Баллы: "+string(points));
// Ответ игрока - под игроком
draw_text(x + 10, y + 43, answer);
// Статус связи
draw_set_color(c_green);
draw_text(x + 168, y + 15, ping);
draw_set_halign(fa_center);