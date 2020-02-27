
draw_sprite(s_insert, 0, x-48, y);

var str = "";
var char = "";
var len = 0;
var wi = sprite_width - 15;
if string_width(fieldString) > wi {
	for(var a = 1; a != string_length(fieldString)+1; a++) {
		char = string_char_at(fieldString, a);
		str += char;
		len += string_width(char);
		
		if len >= wi	
			break;
	}
} else 
	str = fieldString;


draw_set_halign(fa_left);
draw_text(x+5, y+12, str);
draw_text(x+5, y-16, "Ссылка на картинку");
draw_set_halign(fa_center);