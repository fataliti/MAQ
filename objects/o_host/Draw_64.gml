

var lmb = mouse_check_button_pressed(mb_left);

var coef = 24;
with(o_player){
	draw_sprite(s_player_control, 0, x - coef * 1, y + 3);
	draw_sprite(s_player_control, 1, x - coef * 2, y + 3);
	draw_sprite(s_player_control, 2, x - coef * 3, y + 3);
	draw_sprite(s_player_control, 3, x - coef * 4, y + 3);
	//draw_sprite(s_player_control, 4, x - coef * 5, y + 3);
}

if (lmb) {
    var victimId = -1;
    var act = -1;

    with(o_player){
	    if (point_in_rectangle(mouse_x, mouse_y,  x - coef * 1, y + 3,  x - coef * 1 + 23, y + 3 + 24)) {
	        victimId = _id;
	        act = EPlayer.point;
	        points++;
	    }
	    if (point_in_rectangle(mouse_x, mouse_y,  x - coef * 2, y + 3,  x - coef * 2 + 23, y + 3 + 24)) {
	        victimId = _id;
	        act = EPlayer.pointHalf;
	        points+=0.5;
	    }
	    if (point_in_rectangle(mouse_x, mouse_y,  x - coef * 3, y + 3,  x - coef * 3 + 23, y + 3 + 24)) {
	        victimId = _id;
	        act = EPlayer.pointMinus;
	        points--;
	    }
	    if (point_in_rectangle(mouse_x, mouse_y, x - coef * 4, y + 3,  x - coef * 4 + 23, y + 3 + 24)) {
	        victimId = _id;
	        act = EPlayer.kick;
	        ds_list_add(other.kiklist, ip);
	    }
	    //if (point_in_rectangle(mouse_x, mouse_y, x - coef * 5, y + 3,  x - coef * 5 + 23, y + 3 + 24)) {
	    //    victimId = _id;
	    //    act = EPlayer.ban;
	    //}
    }
    
    if (victimId != -1) {
        var action = buffer_create(16, buffer_grow, 1);
        buffer_write(action, buffer_u8, act);
        buffer_write(action, buffer_u8, victimId);
        sendAll(action);
    }
}
