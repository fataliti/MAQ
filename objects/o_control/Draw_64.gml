
if (room == rm_mainmenu || room == rm_lobby || room == rm_settings) {
	if (avatar != -1) {
		draw_sprite(avatar, 0, 480 - avatarSize / 2, 50);
	} else {
		draw_sprite(s_noavatar, 0, 480 - avatarSize / 2, 145);
	}
	draw_text(480, 200, nickname);
}
