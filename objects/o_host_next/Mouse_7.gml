audio_play_sound(a_but_host, 10, false);

if o_control.roundCurrent == o_control.roundTotal{
	gameOverSort();
	
	var sendbuf = buffer_create(2, buffer_grow, 1);
	buffer_write(sendbuf, buffer_u8, ENet.gameOver);
	sendAll(sendbuf);
	
	with(o_right_answer) {instance_destroy();}
	instance_activate_object(o_gameOver);
	instance_deactivate_object(self);
	
	file_delete_ue(program_directory+"Repair.amq");
    exit;
}

var sendbuf = buffer_create( 8, buffer_grow, 1);
buffer_write(sendbuf, buffer_u8, ESong.next);
o_control.roundCurrent++;
o_control.hinted = false;
o_control.songSprite = -1;
with(o_player)		 {answer = "";}
with(o_right_answer) {instance_destroy();}
o_player_host.loading = 0;

global.gameState = ESong.next;

with(o_history)
	script_execute(lambda_scroll_round, o_control.roundCurrent);

sendAll(sendbuf);
instance_activate_object(o_host_prep);
instance_deactivate_object(o_host_next);
instance_deactivate_object(self);

ResetStatus();
ResetMedia();


with(o_player) { o_host.gameMap[? ip] = points; }
o_host.gameMap[? "roundCurrent"] = o_control.roundCurrent;
o_host.gameMap[? "roundTime"] = o_control.roundTime;

var jsonGame = json_encode(o_host.gameMap);
var file = file_text_open_write_ue(program_directory+"Repair.amq");
file_text_writeln_ue(file, jsonGame);
file_text_close_ue(file);


o_control.skipPlayers = 0;
o_host.alarm[0] = 0;