draw_self();

draw_set_color(c_white);
var lmb = LMB_mf0;

var get,he,wi;
for( var a = 0; a < array_length_1d(itog); a++){
	get = itog[@ a];
	var yy = y - 26 - 16 * a;
	
	wi = string_width(get)/2;
	he = string_height(get)/4;
	if inRect_mf0 x - wi inRect_mf1  yy - he inRect_mf2  x + wi inRect_mf3  yy + he inRect_mf4 {
		color_mf0 c_yellow color_mf1;
		if lmb {
			keyboard_string = get;
			textfield_active = true;
			itog = -1;
		}
	}
	draw_text(x, yy, get);
	color_mf0 c_white color_mf1;
}

draw_text(x, y, textfield_string);
if textfield_active {
    draw_text_color(x+string_width(textfield_string)/2 + 8, y, "<", c_white, c_white, c_white, c_white, round(abs(sin(get_timer()/500000))));
    draw_text_color(x-string_width(textfield_string)/2 - 8, y, ">", c_white, c_white, c_white, c_white, round(abs(sin(get_timer()/500000))));
}
