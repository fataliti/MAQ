
if coursorCollision(){
	if !instance_number(o_player) 
		exit;
	
	var scroll = (mouse_wheel_up() - mouse_wheel_down()) * 20;
	
	var firsty = infinity, lasty = -infinity;
	with(o_player){
		if y > lasty {
			lasty = y;
		}
		if y < firsty {
			firsty = y;
		}
	}
	
	if firsty > bbox_top && scroll > 0
		scroll = 0;
	if lasty < bbox_bottom && scroll < 0
		scroll = 0;
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