
if coursorCollision(){
	if !instance_number(o_chat_message) 
		exit;
	
	var scroll = (mouse_wheel_up() - mouse_wheel_down()) * 20;
	
	
	var firsty = infinity, lasty = -infinity, lastId;
	with(o_chat_message){
		if y > lasty {
			lasty = y;
			lastId = id;
		}
		if y < firsty {
			firsty = y;
		}
	}
	
	if firsty > bbox_top && scroll > 0
		scroll = 0;
	if lastId.y + string_height(lastId.message) < bbox_bottom && scroll < 0
		scroll = 0;
	
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