
if global.gameState == ESong.answer {
    var sendbuf = buffer_create( 8, buffer_grow, 1);
    buffer_write(sendbuf, buffer_u8, ESong.next);
    o_control.roundCurrent++;
    sendAll(sendbuf);
    
    global.gameState = ESong.next;
}