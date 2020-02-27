
if keyboard_check_pressed(vk_anykey){
	
	var ch = 2, get, map, arr, got = -1, over = false;
	my_string = keyboard_string;
	arr = titleMap[? string_char_at(my_string, 1)];
	
	if my_string == ""
		over = true;
	
	while !over {
		if arr != undefined {
			for (var i = 0; i < array_length_1d(arr); i++){
				get = arr[@ i];
				
				if get == my_string {
					got[array_length_1d(got)] = get;
					over = true;
				} else {
					if !is_string(get) {
						if get[? string_char_at(my_string, ch)] != undefined
							arr = get[? string_char_at(my_string, ch)];
						else 
							arr = get[? ds_map_find_first(get)];
					} else 
						got[array_length_1d(got)] = get;
				}
				
				ch++;
			}
			over = true;
		}
	}
	
	trace_mf0 my_string trace_mf1;
	trace_mf0 got trace_mf1;
}


