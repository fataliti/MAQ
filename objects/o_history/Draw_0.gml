draw_set_color(c_white);
draw_rectangle(x, y, x + 256, y + 192, false);
draw_set_color(c_black);

var current;
for (var i = 0; i < ds_list_size(game_list); i++) {
    current = game_list[| i];
    draw_text( x, y + 16 * i, current);
    
    if (i == o_control.roundCurrent)
        draw_text(x + string_width(current), y + 16 * i, " <");
}