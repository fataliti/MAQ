

/*
Это для чата
Еще не готово
*/
var str = my_string;
var wi = 0;
var single_word = "";
for(var a = 1; a < string_length(str); a++) {
	if string_char_at(str, a) != " " {
		for(var i = a; i < string_length(str); i++) {
			if string_char_at(str, i) == " " {
				
				single_word = string_copy(str, a, i-a);

				if string_width(single_word) > widh {
					
					//trace("longword>"+single_word+"<");
				
					var wi_single = 0;
					for(var j = a; j < string_length(str); j++) {
						
						if j == i {
							break;
							wi = string_width(string_copy(str, a, i-a));	
						}
						
						wi_single += string_width(string_char_at(str, j));
						if wi_single + wi > widh {
							str = string_insert("\n", str, j);
							wi_single = 0;
							wi = 0;
						}
					}
					wi = wi_single;
				} else if wi + string_width(single_word) > widh {
				
					str = string_insert("\n", str, a);
				} else {
					wi += string_width(single_word);
				}
				a = i;
				break;
			}
		}
	}
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_line( 10,0,10,540);
draw_line( 10+widh,0,10+widh,540);
draw_text( 10,20,str);
draw_line( 10, 20+string_height(str),10+widh,20+string_height(str));
draw_line( 10, 20,10+widh,20);
draw_set_halign(fa_center);
draw_set_valign(fa_center);