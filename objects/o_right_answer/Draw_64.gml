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

var strHe = string_height("H");
var wi = string_width_ext(answerText, strHe, 350);
var he = string_height_ext(answerText, strHe, 350);

if point_in_rectangle(mouse_x, mouse_y, 480 - wi/2, 280, 480 + wi/2, 280 + he) {
	color_mf0 c_yellow color_mf1;
	if mouse_check_button_pressed(mb_left){
		url_open("https://shikimori.one/animes?search=" + answerText);
	}
}

draw_text_ext(480, 280, answerText, strHe, 350);
draw_set_font(fnt_ru);
gpu_set_texfilter(0);
draw_set_valign(fa_middle);
color_mf0 c_white color_mf1;