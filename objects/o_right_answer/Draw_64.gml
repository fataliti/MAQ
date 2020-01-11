
if answerSprite != -1 {
    var scale = 180 / sprite_get_height(answerSprite);
    draw_sprite_ext(answerSprite, 0, 480, 180, scale, scale, 0, c_white, 1);
} else {
    draw_sprite(s_nopicture, 0, 480, 180);
}

draw_text_transformed_color(480, 260, answerText, 2, 2, 0, c_red, c_red, c_red, c_red, 1);