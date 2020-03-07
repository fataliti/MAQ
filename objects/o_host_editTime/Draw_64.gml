if global.gameState == ESong.next {
	draw_self();

	color_mf0 c_white color_mf1;
	draw_set_halign(fa_left);
	var str = (o_control.roundTime > 0) ? string(o_control.roundTime)+ " сек": "неограниченно";
	draw_text(x + 25, y, "Время на угадывание\n" + str);
	draw_set_halign(fa_center);
}