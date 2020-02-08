

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
	draw_text(480, 25, "Время раунда");
	draw_text(480, 40, roundTime);

	draw_sprite(s_edit, 0, 495, 35);
	if mouse_check_button_pressed(mb_left){
		if point_in_rectangle(mouse_x, mouse_y, 495, 35, 495+16, 35+16) {
			var newTime = get_string(@"Вермя на раунда в секундах (целое число)
0 = пока не нажмёте `Показать ответ`
250 = максимальное количество секунд", string(roundTime));
			
			newTime = string_digits(newTime);
			
			if newTime != ""{
				newTime = round(real(newTime));
				newTime = clamp(newTime, 0, 250);
				roundTime = newTime;
			}
		}
	}
}