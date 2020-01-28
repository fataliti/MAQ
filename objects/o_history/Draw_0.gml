draw_self();
draw_set_color(c_white);

draw_set_halign(fa_left);
var yp, a = 0;
for (var i = scrollPoint; i < array_height_2d(game_arr); i++ ) {

	yp = y + 10 + 17 * a;
	if yp > bbox_bottom
		break;

    if (i != o_control.roundCurrent) {
        draw_text(x + 5, y + 10 + 17 * a, game_arr[@ i, EData.name]);
    } else {
    	draw_text(x+5, y + 10 +17 * a, "> " + game_arr[@ i, EData.name]);
    }
    
    a++;
}
draw_set_halign(fa_middle);






