color_mf0 c_white color_mf1;
if answerSprite != -1 {
    var scale = 180 / sprite_get_height(answerSprite);
    draw_sprite_ext(answerSprite, 0, 480, 180, scale, scale, 0, c_white, 1);
} else {
    draw_sprite(s_nopicture, 0, 480, 180);
}

draw_set_font(fnt_ru_15);

var scl = 350 / string_width(answerText);
if scl > 1 
	scl = 1;

draw_text_transformed(480, 280, answerText, scl, 1, 0);
draw_set_font(fnt_ru);