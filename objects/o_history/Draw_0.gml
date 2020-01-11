draw_self();
draw_set_color(c_white);

draw_set_halign(fa_left);
for( var i = 0; i < array_height_2d(game_arr); i++ ) {
    var name = game_arr[@ i, EData.name];
    draw_text(x + 5, y + 10 + 16 * i, name);
    if i == o_control.roundCurrent {
        draw_text(x+5+string_width(name), y + 10 +16 * i, "<");
    }
}
draw_set_halign(fa_middle);
