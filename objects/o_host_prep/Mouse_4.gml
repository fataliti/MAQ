audio_play_sound(a_but_host, 10, false);

if global.gameState == ESong.next {

    var sendbuf = buffer_create( 16, buffer_grow, 1);
    buffer_write(sendbuf, buffer_u8, ESong.prepare);
    buffer_write(sendbuf, buffer_string, o_history.game_arr[@ o_control.roundCurrent, EData.songLink]); 
    sendAll(sendbuf);
    
    global.gameState = ESong.prepare;
    
    instance_activate_object(o_host_play);
    instance_deactivate_object(self);
}