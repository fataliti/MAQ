
if coursorCollision() {
	var scroll = (mouse_wheel_up() - mouse_wheel_down()) * 10;
	
	if scroll == 0 
		exit;
		
	var top = bbox_top + 5;
	var bot = bbox_bottom - 20;
	var yy = y + 10 + scrolled;
	for(var a = 0; a < array_height_2d(game_arr); a++)
		yy += string_height_ext(game_arr[@ a, EData.name], 17, sprite_width - 10);
		
		
	if  y + 10 + scrolled  > top && scroll > 0
		scroll = 0;
		
	if yy + string_height_ext(game_arr[@ a-1, EData.name], 17, sprite_width - 10) < bot && scroll < 0
		scroll = 0;
		
	scrolled += scroll;
}