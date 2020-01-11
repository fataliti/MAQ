audio_play_sound(a_but_host, 10, false);

if global.gameState == ESong.next {
    if o_history.game_arr == -1 {
        with(o_history){
            script_execute(o_history.load_txt);
        }
        exit;
    } 
    var sendbuf = buffer_create( 16, buffer_grow, 1);
    buffer_write(sendbuf, buffer_u8, ESong.prepare);
    buffer_write(sendbuf, buffer_string, o_history.game_arr[@ o_control.roundCurrent, EData.songLink]); 
    sendAll(sendbuf);
    
    global.gameState = ESong.prepare;
}