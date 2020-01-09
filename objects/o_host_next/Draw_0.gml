
if global.gameState == ESong.answer {
    draw_self();
} else {
    draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_red, 1);
}