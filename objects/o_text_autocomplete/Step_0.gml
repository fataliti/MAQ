
if keyboard_check_pressed(vk_anykey){
	my_string = keyboard_string;

	if string_length(my_string) > 0
	{	
		var arr = titleMap[? string_char_at(my_string, 1)];
		variants = -1;

		if arr != undefined {
			script_execute(getVariants, arr);

			var itog = [];
			for (var a = 0; a < array_length_1d(variants); a++) {
				if string_count(my_string, variants[a]) {
					itog[array_length_1d(itog)] = get;
				}
			}
			trace_mf0 my_string trace_mf1;
			trace_mf0 itog trace_mf1;
		}
	}
}


