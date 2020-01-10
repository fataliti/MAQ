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
    global.gameState = ESong.next;
}