audio_play_sound(a_but_host, 10, false);

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
    
    var insAnsw = instance_create_depth(0, 0, 0, o_right_answer);
    insAnsw.answerText = o_history.game_arr[@ o_control.roundCurrent, EData.name];
}