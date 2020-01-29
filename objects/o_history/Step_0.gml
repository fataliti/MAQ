
if coursorCollision() {
	script_execute(lambda_scroll_history, mouse_wheel_up() - mouse_wheel_down());
/*
	scrollPoint += mouse_wheel_up() - mouse_wheel_down();
	
	var _max = array_height_2d(game_arr)-15;
	if _max < 0
		_max = 0;
		
	scrollPoint = clamp(scrollPoint, 0, _max);
*/
}