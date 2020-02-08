lastResponsePast += 1;
if (lastResponsePast > room_speed * 30) {
	show_message("Потеряно соединение с сервером");
	script_execute(o_control.lambda_game_restore);
}