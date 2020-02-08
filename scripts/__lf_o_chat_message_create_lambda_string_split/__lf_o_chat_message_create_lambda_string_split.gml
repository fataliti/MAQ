/// __lf_o_chat_message_create_lambda_string_split()
//!#lambda lambda_string_split
{
	var str = message;
	var len = string_length(str);
	var single_word = "";
	var wi = 0;
	var widh = 240;
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
					} else if wi + string_width(single_word+" ") > widh {
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
	
	var _yto = string_height(str);
	with(o_chat_message){
		if yto == undefined {
			yto = y - _yto;
		} else {
			yto -= _yto;
		}
	}
	
	message = str;
}