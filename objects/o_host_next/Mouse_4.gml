audio_play_sound(a_but_host, 10, false);

if o_control.roundCurrent == o_control.roundTotal{
    
    //Показывается пабедитель
    //Наверное
    
    trace_mf0 "ИГРА ЗАКОНЧЕНА" trace_mf1;
    exit;
}

if global.gameState == ESong.answer {
    var sendbuf = buffer_create( 8, buffer_grow, 1);
    buffer_write(sendbuf, buffer_u8, ESong.next);
    o_control.roundCurrent++;
    sendAll(sendbuf);
    with(o_player){answer = "";}
    with(o_right_answer) {instance_destroy();}
    global.gameState = ESong.next;
    
    instance_activate_object(o_host_prep);
    instance_deactivate_object(self);
}