lastResponsePast += 1;
if lastResponsePast > room_speed * 30 {
	show_message("Потеряно соединение с сервером");
	game_restart();
}