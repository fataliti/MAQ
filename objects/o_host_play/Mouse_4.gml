audio_play_sound(a_but_host, 10, false);

if global.gameState == ESong.prepare {

    var sendbuf = buffer_create( 8, buffer_grow, 1);
    buffer_write(sendbuf, buffer_u8, ESong.play);
    o_control.countdown = countdownDefault;
    sendAll(sendbuf);

    global.gameState = ESong.play;
    
    
    instance_activate_object(o_host_answ);
    instance_deactivate_object(self);
}