
if global.gameState == ESong.play && o_control.countdown <= 0 {

    var sendbuf = buffer_create( 128, buffer_grow, 1);
    buffer_write(sendbuf, buffer_u8, ESong.answer);
	
	var playrsCnt = instance_number(o_player);
	buffer_write(sendbuf, buffer_u8, playrsCnt);
	with(o_player){
		buffer_write(sendbuf, buffer_u8, _id);
		buffer_write(sendbuf, buffer_string, answer);
	}
    sendAll(sendbuf);
    global.gameState = ESong.answer;
}