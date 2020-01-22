
var col = c_yellow;
if !audio_is_playing(global.bgm)
	col = c_dkgray;

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, col, 1);