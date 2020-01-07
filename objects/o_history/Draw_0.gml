draw_set_color(c_white);
draw_rectangle(x, y, x + 256, y + 192, false);
draw_set_color(c_black);
/*
var now;
for (var i = 0; i < ds_list_size(game_list); i++) {
    now = game_list[| i];
    draw_text(x, y + 16 * i, now);
    
    if (i == o_control.roundCurrent)
        draw_text(x + string_width(now), y + 16 * i, " <");
}
*/

for( var i = 0; i < array_height_2d(game_arr); i++ ) {
    draw_text(x, y + 16 * i, game_arr[@ i,0]);
}

