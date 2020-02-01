
if async_load[? "id"] == songPic {
	if async_load[? "result"] != undefined {
		songSprite = sprite_add("guess.pic", 1, 0, 1, 0, 0);
		sprite_set_offset(songSprite, sprite_get_width(songSprite)/2, sprite_get_height(songSprite)/2);
		songPic = -1;
		
		
		if instance_exists(o_right_answer) {
			o_right_answer.answerSprite = songSprite;
		}
	}
}