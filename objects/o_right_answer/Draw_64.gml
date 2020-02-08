gpu_set_texfilter(1);
color_mf0 c_white color_mf1;
if answerSprite != -1 {
    var scale = 180 / sprite_get_height(answerSprite);
    draw_sprite_ext(answerSprite, 0, 480, 180, scale, scale, 0, c_white, 1);
} else {
    draw_sprite(s_nopicture, 0, 480, 180);
}

draw_set_font(fnt_ru_15);
draw_set_valign(fa_top);
draw_text_ext(480, 280, answerText, string_height("H"), 350);
draw_set_font(fnt_ru);
gpu_set_texfilter(0);
draw_set_valign(fa_middle);