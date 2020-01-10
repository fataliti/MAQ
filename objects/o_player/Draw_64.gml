
if (avatar != -1) {
    draw_sprite(avatar, 0, x, y,);
}
// Прогресс загрузки песни игроком
draw_set_color(c_blue);
draw_rectangle(x+32, y, x + 96, y + 10, true);
draw_rectangle(x+32, y, x + 32 + 64 * loading, y + 10, false);
// Ник и очки
draw_set_color(c_white);
draw_text(x + 64, y + 23, nickname + ": " + string(points));
// Идентификатор игрока
draw_set_color(c_red);
draw_text(x + 124, y + 5, _id);
// Статус связи
draw_set_color(c_green);
draw_text(x + 124, y + 23, ping);
// Ответ игрока
draw_set_color(c_orange);
draw_text(x + 64, y + 5, answer);
