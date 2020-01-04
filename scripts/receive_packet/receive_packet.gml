/// @param buf
var buf = argument0;

buffer_seek( buf, buffer_seek_start, 0);
var act = buffer_read( buf, buffer_u8);

switch( act) {
    case ENET.message:
        var msg = buffer_read( buf, buffer_string);
        ds_list_add( o_chat.messages, msg);
        if is_host
            sendall( buf);
        break;

    case ENET.get_playerinfo:  
        my_id = buffer_read( buf, buffer_u8);
    
        var sendbuf = buffer_create( 64, buffer_grow, 1);
        buffer_write( sendbuf, buffer_u8, ENET.about_player);
        buffer_write( sendbuf, buffer_u8, my_id);
        buffer_write( sendbuf, buffer_string, o_control.my_nickname );
        sendhost( sendbuf);
        break;
        
    case ENET.about_player:
        var answer_id = buffer_read( buf, buffer_u8);
        var new_nick = buffer_read( buf, buffer_string);
        with( o_player) {
            if answer_id == _id {
                nick = new_nick;
                trace_mf0  _id trace_mf1;   
            }
        }

        var game_buf = buffer_create( 128, buffer_grow, 1);
        buffer_write( game_buf, buffer_u8, ENET.send_all_new_player);
        
        var cnt = instance_number( o_player);
        buffer_write( game_buf, buffer_u8, cnt);
        with( o_player){
            buffer_write( game_buf, buffer_u8, _id);
            buffer_write( game_buf, buffer_string, nick);
        }
        script_execute( sendall, game_buf);
        
        break;
    
    case ENET.send_all_new_player:
        var rep = buffer_read( buf, buffer_u8);
        
        var new_id, new_nick, new_exist, new_player;
        repeat( rep) {
            new_exist = false;
            new_id = buffer_read( buf, buffer_u8);
            new_nick = buffer_read( buf, buffer_string);
            
            with( o_player) {
                if _id == new_id
                    new_exist = true;
            }
            
            if !new_exist {
                new_player = instance_create_layer( 650, 60 + 30 * new_id, "layer_game", o_player);
                new_player._id = new_id;
                new_player.nick = new_nick;
            }
        }
        break;
        
    case ENET.player_disconect:
        var del_id = buffer_read( buf, buffer_u8);
        
        with( o_player) {
            if _id == del_id
                instance_destroy();
        }
        
        break;
        
    case ENET.add_point:
        var add_id = buffer_read( buf, buffer_u8);
        
        with( o_player) {
            if _id == add_id
                points++;
        }
        break;
        
    case ENET.kick:
        var kick_id = buffer_read( buf, buffer_u8);
        
        with( o_player) {
            if _id == kick_id
                instance_destroy();
        }
        
        if my_id == kick_id {
            network_destroy( global.socket);
            global.socket = -1;
            game_restart();
        }
        break;
        
    case ENET.answer:
        var answ_id = buffer_read( buf, buffer_u8);
        var answ = buffer_read( buf, buffer_string);
        
        with( o_player) {
            if _id == answ_id
                current_answer = answ;
        }
        if is_host 
            sendall(buf);
        break;
        
    case ENET.game_round_prep:
        trace_mf0  "GET ROUND INFO AND DOWNLOAD SONG" trace_mf1;
        song_link = http_get_file( testfile, working_directory + "round.song");
        alarm[ 0] = tickrate;
        break;
    case ENET.game_round_start:
        trace_mf0  "SONG START" trace_mf1;
        game_timer = round_time;
        
        if song_stream != -1 {
            game_song = audio_play_sound( song_stream, 10, false);
        }
        break;
        
    case ENET.game_round_end:
        audio_stop_sound( game_song);
        game_song = -1;
        audio_destroy_stream( song_stream);
        song_stream = -1;
        game_timer = 0; 
        break;

    case ENET.game_round_preparing_perc:
        var perc_id = buffer_read( buf, buffer_u8);
        var perc = buffer_read( buf, buffer_u8);
        
        with( o_player){
            if _id == perc_id
                load_percent = perc / 100;
        }
        
        if is_host
            sendall( buf);
        break;
    
    case ENET.game_round_answer:
        ///Показыывается ответ
        break;
        
    case ENET.game_round_next:
    
        game_round++;
    
        break;
    
    /*   
    case ENET.ping_chek:
        var ping_id = buffer_read( buf, buffer_u8);
        
        if is_host {
            senduser( buf, ping_id);
        } else {
            var sendbuf = buffer_create( 32, buffer_grow, 1);
            buffer_write( sendbuf, buffer_u8, ENET.ping_get);
            buffer_write( sendbuf, buffer_u8, my_id);
            buffer_write( sendbuf, buffer_u16, current_time - ping_time_send);
            sendhost( sendbuf);
        }
        break;
    case ENET.ping_get:
        
        var ping_id = buffer_read( buf, buffer_u8);
        var _ping = buffer_read( buf, buffer_u16);
        
        with( o_player){
            if _id == ping_id
                ping = _ping;
        }
        
        if is_host
            sendall( buf);
    */
    
}
