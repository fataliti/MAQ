
if coursorCollision(){
	if !instance_number(o_player) 
		exit;
	
	var scroll = (mouse_wheel_down() - mouse_wheel_up()) * 10;
	scrolled += scroll;
	
	if scroll == 0
		exit;

	with(o_player) {
		if yto == undefined
			yto = y + scroll;
		else 
			yto += scroll;
	}
}