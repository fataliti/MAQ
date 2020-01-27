
if room == rm_lobby {
	draw_text(480, 25, "Время раунда");
	draw_text(480, 40, roundTime);
	draw_rectangle(455, 35, 465, 45, false);
	draw_rectangle(495, 35, 505, 45, false);
	
	if mouse_check_button_pressed(mb_left){
		if point_in_rectangle(mouse_x, mouse_y, 455, 35, 465, 45)
			roundTime -= 5;
			
		if point_in_rectangle(mouse_x, mouse_y, 495, 35, 505, 45)
			roundTime += 5;
			
		roundTime = clamp(roundTime, timer, 60);
	}
	
}