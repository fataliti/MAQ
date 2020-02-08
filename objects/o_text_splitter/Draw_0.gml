

if first_frame {
	var str = my_string;
	var len = string_length(str);
	var single_word = "";
	var wi = 0;
	for(var a = 1; a != len; a++) {
		if string_char_at(str, a) != " " {
			for(var i = a; i != len; i++) {
				if string_char_at(str, i) == " " || i == len-1 {
					single_word = string_copy(str, a, i-a);
					if string_width(single_word) > widh {
						var wi_single = 0;
						for(var j = a; j != len; j++) {
							if j == i {
								break;
								wi = string_width(string_copy(str, a, i-a));	
							}
							wi_single += string_width(string_char_at(str, j));
							if wi_single + wi > widh {
								str = string_insert("\n", str, j);
								wi_single = 0;
								wi = 0;
								len += string_length("\n");
							}
						}
						wi = wi_single;
					} else if wi + string_width(single_word) > widh {
						str = string_insert("\n", str, a);
						wi = string_width(single_word+" ");
						len += string_length("\n");
					} else {
						wi += string_width(single_word+" ");
					}
					a = i;
					break;
				}
			}
		}
	}
	first_frame = false;
	my_string = str;
} else {
	var str = my_string;
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(0,0,widh);
draw_line( 10,0,10,540);
draw_line( 10+widh,0,10+widh,540);
draw_text( 10,20,str);
draw_line( 10, 20+string_height(str),10+widh,20+string_height(str));
draw_line( 10, 20,10+widh,20);
draw_set_halign(fa_center);
draw_set_valign(fa_center);