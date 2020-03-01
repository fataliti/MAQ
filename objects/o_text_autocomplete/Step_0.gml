
if keyboard_check_pressed(vk_anykey){
	my_string = keyboard_string;

	if string_length(my_string) > 0
	{	
		var firstSym = string_char_at(my_string, 1);
		var arr = titleMap[? firstSym];
		var variants = [];
		var charN = 2;
		var char;
		var get;
		var len;
		
		if arr != undefined {
			var over = false;
			while !over {
			
				char = string_char_at(my_string, charN);
				len = array_length_1d(arr);
				if len == 0
					over = true;
				

				var secondIter = true;
				for (var i = 0; i < array_length_1d(arr); i++) {
					get = arr[@ i];
					if is_string(get) {
						variants[array_length_1d(variants)] = get;
						//trace(["word added", get]);
					} else {
						if get[? char] != undefined {
							//trace("notNAN");
							arr = get[? char];
							secondIter = false;
						}
					}
				}
				
				if secondIter {
					var hasNext = false;
				
					for (var j = 0; j < array_length_1d(arr); j++) {
						get = arr[ j];
						if !is_string(get) {
							arr = get[? ds_map_find_first(get)];
							hasNext = true;
						} 
					}
					
					if !hasNext{
						over = true;
					}
					
				}
				
				charN++;
			}
		}
		trace_mf0 my_string trace_mf1;
		trace_mf0 variants trace_mf1;
	}
}


