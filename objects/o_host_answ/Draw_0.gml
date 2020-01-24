
    
if o_control.countdown > 0 {
    draw_sprite_ext(sprite_index, 0, x, y, 0, 0, 0, c_red, 1);
} else {
	draw_self();
}