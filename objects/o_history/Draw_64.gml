
draw_self();
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x + 20, y - 20, string(o_control.roundCurrent+1) +" / "+ string(o_control.roundTotal+1));

var top = bbox_top + 5;
var bot = bbox_bottom - 20;

var str, alpha = 1;
var yy = y + 10 + scrolled;
for(var a = 0; a < array_height_2d(game_arr); a++){
	str = game_arr[@ a, EData.name];
	
	if a == o_control.roundCurrent
		str = "> " + str;
	
	if yy < top	
		alpha = 1 - (top - yy) / 10;
	
	if  yy + string_height_ext(str, 17, sprite_width - 10) > bot
		alpha = 1 - (yy - bot)/ 10;
	
	
	draw_text_ext_color(x + 5, yy, str, 17, sprite_width - 10, c_white, c_white, c_white, c_white, alpha);
	
	yy += string_height_ext(str, 17, sprite_width - 10);
	alpha = 1;
}

draw_set_valign(fa_middle);
draw_set_halign(fa_middle);










