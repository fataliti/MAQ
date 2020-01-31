/// __lf_o_history_create_lambda_scroll_round(_round)
//!#lambda lambda_scroll_round($)
var _round = argument0;
 {
	var top = bbox_top + 5;
	var bot = bbox_bottom - 20;
	
	var yy = y + 10;
	for(var a = 0; a < _round; a++)
		yy += string_height_ext(game_arr[@ a, EData.name], 17, sprite_width - 10);
	
	
	if yy > bot
		scrolled = bot - yy;
	else
		scrolled = 0;
	
}