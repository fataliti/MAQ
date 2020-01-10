
if global.gameState == ESong.next {
    if o_history.game_arr == -1 {
        trace_mf0 "ВСТАВЬ ТЕКСТОВИК С ССЫЛКАМИ" trace_mf1;
        exit;
    } 
    var sendbuf = buffer_create( 16, buffer_grow, 1);
    buffer_write(sendbuf, buffer_u8, ESong.prepare);
    buffer_write(sendbuf, buffer_string, o_history.game_arr[@ o_control.roundCurrent, EData.songLink]); 
    sendAll(sendbuf);
    
    global.gameState = ESong.prepare;
}