audio_play_sound(a_but_host, 10, false);
/*
if o_control.roundCurrent == o_control.roundTotal{
    
    //Показывается пабедитель
    //Наверное
    
    trace("ИГРА ЗАКОНЧЕНА");
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
}
*/

var sendbuf = buffer_create( 8, buffer_grow, 1);

if  o_control.countdown > 0 {
	
	o_control.countdown = 0;
	global.gameState = ESong.answer;
	
	buffer_write(timeOver, buffer_u8, ESong.stop);
	buffer_write(timeOver, buffer_string, o_history.game_arr[@ ctrl.roundCurrent, EData.pic]);
	buffer_write(timeOver, buffer_string, o_history.game_arr[@ ctrl.roundCurrent, EData.name]);
	
} else {
    
    var sendbuf = buffer_create( 8, buffer_grow, 1);
    buffer_write(sendbuf, buffer_u8, ESong.next);
    o_control.roundCurrent++;
    sendAll(sendbuf);
    with(o_player)		 {answer = "";}
    with(o_right_answer) {instance_destroy();}
    
    global.gameState = ESong.next;
}

sendAll(sendbuf);