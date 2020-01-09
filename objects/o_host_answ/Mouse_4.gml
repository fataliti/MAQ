
if global.gameState == ESong.play && o_control.countdown <= 0 {

    var sendbuf = buffer_create( 8, buffer_grow, 1);
    buffer_write(sendbuf, buffer_u8, ESong.answer);
	//Зашить ответы пользователей
    sendAll(sendbuf);
    global.gameState = ESong.answer;
}