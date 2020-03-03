
if keyboard_check_pressed(vk_anykey){
	my_string = keyboard_string;

	if string_length(my_string) > 0
	{	
		var arr = titleMap[? string_char_at(my_string, 1)];
		
		if arr != undefined {
			variants = -1;
			script_execute(getVariants, arr);

			var itog = [];
			var get;
			for (var a = 0; a < array_length_1d(variants); a++) {
				get = variants[a];
				if string_count(my_string, get) {
					itog[array_length_1d(itog)] = get;
				}
				
				if array_length_1d(itog) >= 5
					break;
			}
			log_mf0 "o_text_autocomplete" log_mf1 "120" log_mf2 my_string log_mf3;
			log_mf0 "o_text_autocomplete" log_mf1 "121" log_mf2 itog log_mf3;
		}
	}
}


