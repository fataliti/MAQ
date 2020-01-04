
if game_timer > 0 {
    game_timer -= delta_time / 1000000;
    color_mf0  c_red color_mf1;
    draw_text( 15, 15, game_timer);
    
    
    if game_timer <= 0 {
        var sendbuf = buffer_create( 8, buffer_grow, 1);
        buffer_write( sendbuf, buffer_u8, ENET.game_round_end);
        sendall( sendbuf);
    }
}


if is_host {
    
    var lmb = mouse_check_button_pressed( mb_left);
    
    color_mf0  c_red color_mf1;
    draw_rectangle( x, y, x + 32, y + 16, false);
    draw_rectangle( x + 48, y, x + 80, y + 16, false);
    draw_rectangle( x + 96, y, x + 128, y + 16, false);
    draw_rectangle( x + 144, y, x + 176, y + 16, false);
    color_mf0  c_white color_mf1;
    draw_text( x, y, "prep");
    draw_text( x+48, y + 0, "start");
    draw_text( x+96, y + 0, "answ");
    draw_text( x+144, y + 0, "next");
    
    if lmb {
        if point_in_rectangle( mouse_x, mouse_y, x, y, x + 32, y + 16) {
            var sendbuf = buffer_create( 8, buffer_grow, 1);
            buffer_write( sendbuf, buffer_u8, ENET.game_round_prep);
            //buffer_write( sendbuf,  ); <- зашивается инфа по раунду
            sendall( sendbuf);
        }
        if point_in_rectangle( mouse_x, mouse_y, x + 48, y, x + 80, y + 16) {
            var sendbuf = buffer_create( 8, buffer_grow, 1);
            buffer_write( sendbuf, buffer_u8, ENET.game_round_start);
            // раунд начинается
            game_timer = round_time;
            sendall( sendbuf);
        }
        
        if point_in_rectangle( mouse_x, mouse_y, x + 96, y, x + 128, y + 16) {
            var sendbuf = buffer_create( 8, buffer_grow, 1);
            buffer_write( sendbuf, buffer_u8, ENET.game_round_answer);
            //пользователям показывается ответ
            sendall( sendbuf);
        }
        
        if point_in_rectangle( mouse_x, mouse_y, x + 144, y, x + 176, y + 16) {
            var sendbuf = buffer_create( 8, buffer_grow, 1);
            buffer_write( sendbuf, buffer_u8, ENET.game_round_next);
            game_round++;
            //пользователям показывается ответ
            sendall( sendbuf);
        }
        
    }
    

    color_mf0  c_green color_mf1;
    with( o_player) {
        draw_rectangle( x - 32, y, x, y+16, false);
    }
    
    color_mf0  c_red color_mf1;
    with( o_player) {
        draw_rectangle( x - 64, y, x-33, y+16, false);
    }
    
    if lmb {
        var player_id = -1;
        var act       = -1;
        
        with( o_player) {
            if point_in_rectangle( mouse_x, mouse_y, x - 32, y, x, y+16) {
                player_id = id;
                act = ENET.add_point;
                points++;
            }
            
            if point_in_rectangle( mouse_x, mouse_y, x - 64, y, x-33, y+16) {
                player_id = id;
                act = ENET.kick;
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
