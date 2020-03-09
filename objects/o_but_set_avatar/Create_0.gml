
if o_control.avatar != -1 {
	sprite_index = o_control.avatar;
	image_xscale = avatarSize / sprite_get_width(sprite_index);
	image_yscale = avatarSize / sprite_get_height(sprite_index);
}