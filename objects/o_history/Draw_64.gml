
draw_self();
draw_set_color(c_white);
gpu_set_texfilter(true);
draw_set_halign(fa_left);
var yp, str, scl, a = 0, wi = (sprite_width - 10);
for (var i = scrollPoint; i < array_height_2d(game_arr); i++ ) {

	yp = y + 10 + 17 * a;
	if yp > bbox_bottom
		break;
	
	str = game_arr[@ i, EData.name];

    if (i != o_control.roundCurrent) {
    	scl = wi / string_width(str);
    	if scl > 1
    		scl = 1;
        draw_text_transformed(x + 5, y + 10 + 17 * a, str, scl, 1, 0);
    } else {
	    scl = wi / string_width("> "+str);
	    if scl > 1
	    	scl = 1;
    	draw_text_transformed(x + 5, y + 10 + 17 * a, "> "+str, scl , 1, 0);
    }
    
    a++;
}
draw_set_halign(fa_middle);
gpu_set_texfilter(false);




