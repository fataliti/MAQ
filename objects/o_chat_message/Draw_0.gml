
if !o_chat.textfield_active
	draw_set_alpha(image_alpha/2);
else 
	draw_set_alpha(0.5);
	
draw_set_halign(fa_left);
draw_set_valign(fa_top);
color_mf0 chatCol color_mf1;
draw_rectangle(x, y, x + 255, y + string_height(message),false);

if !o_chat.textfield_active
	draw_set_alpha(image_alpha);
else 
	draw_set_alpha(1);
color_mf0 c_white color_mf1;
draw_text(x, y, message);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_alpha(1);
