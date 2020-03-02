
if keyboard_check_pressed(vk_anykey){
	my_string = keyboard_string;

	if string_length(my_string) > 0
	{	
		var firstSym = string_char_at(my_string, 1);
		var arr = titleMap[? firstSym];
		var charN = 1;
		variants = -1;

		if arr != undefined {
			len = string_length(my_string);
			script_execute(getVariants, arr);
		}
		
		
		var itog = [];
		var myLen = string_length(my_string);
		for (var a = 0; a < array_length_1d(variants); a++) {
			var get = variants[a];
			if string_count(my_string, get) {
				itog[array_length_1d(itog)] = get;
			}
		}
		trace_mf0 my_string trace_mf1;
		trace_mf0 itog trace_mf1;
		
	}
}


