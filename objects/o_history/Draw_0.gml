draw_self();
draw_set_color(c_white);

draw_set_halign(fa_left);
for (var i = 0; i < array_height_2d(game_arr); i++ ) {
    if (i != o_control.roundCurrent) {
        draw_text(x + 5, y + 10 + 16 * i, game_arr[@ i, EData.name]);
    } else {
    	draw_text(x+5, y + 10 +16 * i, "> " + game_arr[@ i, EData.name]);
    }
}
draw_set_halign(fa_middle);
