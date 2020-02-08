
var alpha = 1;
if  y < o_scroll_chat.bbox_top 
	alpha = 1 - (o_scroll_chat.bbox_top - y) / 10;

if y + string_height(message) > o_chat.y
	alpha = 0.5;

draw_set_alpha(alpha/2);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
color_mf0 chatCol color_mf1;
draw_rectangle(x, y, x + 255, y + string_height(message),false);

draw_set_alpha(alpha);
color_mf0 c_white color_mf1;
draw_text(x, y, message);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_alpha(1);
