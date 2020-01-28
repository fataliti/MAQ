
if coursorCollision(){
	if !instance_number(o_chat_message) 
		exit;
	
	var scroll = (mouse_wheel_down() - mouse_wheel_up()) * 10;
	scrolled += scroll;
	if scroll == 0
		exit;

	with(o_chat_message) {
		if yto == undefined
			yto = y + scroll;
		else 
			yto += scroll;
	}
}