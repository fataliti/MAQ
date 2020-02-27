
if keyboard_check_pressed(vk_anykey){

	var char = titleMap[? keyboard_lastchar];
	if char != undefined {
		for (var a = 0; a < array_length_1d(char); a++) {
			
			var get = char[@ a];
			trace_mf0 get trace_mf1;
			
			if !is_string(get) {
				trace_mf0 ds_map_find_first(get) trace_mf1;
			}
			
		}
	}

}


