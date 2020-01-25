lastResponsePast += 1;
if lastResponsePast > room_speed * 30 {
	show_message("Потеряно соединение с сервером");
	game_restart();
}


//if keyboard_check_pressed(vk_space)
//	trace(GetStatus());