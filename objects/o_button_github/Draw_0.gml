
if coursorCollision() {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_yellow, 1);
} else {
	draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_dkgray, 1);
}