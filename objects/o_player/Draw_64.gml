
if avatar != -1 {
    draw_sprite( avatar, 0, x, y,);
}

// Прогресс загрузки песни игроком
draw_set_color(c_green);
draw_rectangle(x, y, x + 64, y + 20, true);
draw_rectangle(x, y, x + 64 * loading, y + 20, false);
// Ник и очки
draw_set_color(c_white);
draw_text(x, y, nickname + ": " + string(points));
// Идентификатор игрока
draw_set_color(c_red);
draw_text(x + 64, y, _id);
// Статус связи
draw_set_color(c_green);
draw_text(x + 96, y, ping);
// Ответ игрока
draw_set_color(c_orange);
draw_text(x, y + 15, answer);