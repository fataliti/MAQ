
if o_control.gameOver	
	exit;

var lmb = mouse_check_button_pressed(mb_left);

var coef = 32;
with(o_player) {
	// Слева от аватарки
	draw_sprite(s_player_control, 1, x - coef - 3, y + 1);
	draw_sprite(s_player_control, 0, x - coef * 2 - 6, y + 1);
	// Справа от пинга	
	draw_sprite(s_player_control, 2, x + 158 + coef + 3, y + 1);
	draw_sprite(s_player_control, 3, x + 158 + coef * 2 + 6, y + 1);
}

if (lmb) {
    var victimId = -1;
    var act = -1;

    with(o_player) {
	    if (point_in_rectangle(mouse_x, mouse_y,  x - coef - 3, y + 1,  x - coef - 3 + coef, y + 1 + coef)) {
	        victimId = _id;
	        act = EPlayer.pointPlus;
	        points += 0.5;
	    }
	    if (point_in_rectangle(mouse_x, mouse_y,  x - coef * 2 - 6, y + 1,  x - coef * 2 - 6 + coef, y + 1 + coef)) {
	        victimId = _id;
	        act = EPlayer.pointMinus;
	        points -= 0.5;
	    }
	    if (point_in_rectangle(mouse_x, mouse_y, x + 158 + coef + 3, y + 1,  x + 158 + coef + 3 + coef, y + 1 + coef)) {
	        victimId = _id;
	        act = EPlayer.kick;
	        ds_list_add(other.kiklist, ip);
	    }
	    if (point_in_rectangle(mouse_x, mouse_y, x + 158 + coef * 2 + 6, y + 1,  x + 158 + coef * 2 + 6 + coef, y + 1 + coef)) {
	        victimId = _id;
	        act = EPlayer.ban;
	        ds_list_add(other.banlist, ip);
	    }
    }
    
    if (victimId != -1) {
        var action = buffer_create(16, buffer_grow, 1);
        buffer_write(action, buffer_u8, act);
        buffer_write(action, buffer_u8, victimId);
        sendAll(action);
    }
}

