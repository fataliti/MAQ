
if coursorCollision() {
	draw_sprite_ext(s_skip, 0, x, y, 1, 1, 0, c_yellow, 1);
	
	if LMB_mf0{
		var skip = buffer_create(1, buffer_grow, 1);
		buffer_write(skip, buffer_u8, ESong.skip);
		sendHost(skip); 
		instance_deactivate_object(self);
	}
	
} else 
	draw_self();