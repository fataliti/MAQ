draw_set_color(c_white);
draw_rectangle(x, y, x + 256, y + 192, false);
draw_set_color(c_black);


draw_set_halign(fa_left);
for( var i = 0; i < array_height_2d(game_arr); i++ ) {
    draw_text(x, y + 16 * i, game_arr[@ i,0]);
}
draw_set_halign(fa_middle);
