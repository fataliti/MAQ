
if mouse_check_button_pressed(mb_left){
    if o_control.countdown > 0 && point_in_rectangle( mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)  {
        textfield_active = true;
        keyboard_string = textfield_string;
    } else {
        textfield_active = false;
    }
}

if textfield_active {
	if o_control.countdown <= 0 {
    	textfield_active = false;
    	itog = -1;
	}

    if textfield_string != keyboard_string {
    	textfield_string = keyboard_string;
    }
    
    if keyboard_check_pressed(vk_anykey) {
    	if string_length(textfield_string) > 0
		{	
			var arr = global.titleMap[? string_char_at(textfield_string, 1)];
			
			if arr != undefined {
				variants = -1;
				script_execute(getVariants, arr);
	
				itog = -1;
				var get;
				for (var a = 0; a < array_length_1d(variants); a++) {
					get = variants[a];
					if string_count(textfield_string, get) {
						itog[array_length_1d(itog)] = get;
					}
					
					if array_length_1d(itog) >= 5
						break;
				}
				log_mf0 "o_field_answer" log_mf1 "80" log_mf2 textfield_string log_mf3;
				log_mf0 "o_field_answer" log_mf1 "81" log_mf2 itog log_mf3;
			}
		}
    	script_execute(lambda_answer_send);
    }
    
    	
    if keyboard_check_pressed(vk_enter) {
    	textfield_active = false;
    	itog = -1;	
    }
}