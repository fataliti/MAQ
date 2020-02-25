

with(o_player) {
	if yto != undefined {
		y = lerp(yto, y, 0.70);
		if abs(yto - y) < 1 {
			y = yto;
			yto = undefined;
		}
	}
	
	if place != -1
		draw_sprite(s_medals, place, x - 35, y + 1);
}


if room == rm_lobby {
	draw_text(480, 25, "Время на угадывание");
	draw_text(480, 50, string(roundTime) + " сек");
	indent = 500 + string_length(roundTime) * 5;
	draw_sprite(s_edit, 0, indent, 42);
	if mouse_check_button_pressed(mb_left){
		if point_in_rectangle(mouse_x, mouse_y, indent, 42, indent+16, 42+16) {
			var newTime = get_string(@"Время на угадывание в секундах (целое число)
0 = бесконечно (пока не покажете ответ)
250 = максимум", string(roundTime));
			
			newTime = string_digits(newTime);
			
			if newTime != "" {
				newTime = round(real(newTime));
				newTime = clamp(newTime, 0, 250);
				roundTime = newTime;
			}
		}
	}
}