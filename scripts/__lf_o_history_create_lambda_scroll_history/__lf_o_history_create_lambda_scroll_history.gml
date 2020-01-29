/// __lf_o_history_create_lambda_scroll_history(scrollIncr)
//!#lambda lambda_scroll_history($)
var scrollIncr = argument0;
 {
	
	scrollPoint += scrollIncr;
	
	var _max = array_height_2d(game_arr)-15;
	if _max < 0
		_max = 0;
		
	scrollPoint = clamp(scrollPoint, 0, _max);
}