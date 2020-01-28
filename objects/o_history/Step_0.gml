
if coursorCollision() {
	scrollPoint += mouse_wheel_down() - mouse_wheel_up();
	
	var _max = array_height_2d(game_arr)-15;
	if _max < 0
		_max = 0;
		
	scrollPoint = clamp(scrollPoint, 0, _max);
}