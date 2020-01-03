if is_host {
    
    var lmb = mouse_check_button_pressed( mb_left);
    
    with( o_player) {
        draw_rectangle( x - 32, y, x, y+16, false);
    }
    
    if lmb {
        var player_id = -1;
        var act       = -1;
        
        with( o_player) {
            if point_in_rectangle( mouse_x, mouse_y,x - 32, y, x, y+16) {
                player_id = id;
                act = ENET.add_point;
                points++;
            }
        }
        
        if player_id != -1 {
            var sendbuf = buffer_create( 16, buffer_grow, 1);
            buffer_write( sendbuf, buffer_u8, act);
            buffer_write( sendbuf, buffer_u8, player_id._id);
            sendall( sendbuf);
        }
    }
    
}
