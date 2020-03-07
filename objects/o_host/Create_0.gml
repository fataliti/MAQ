
connects = ds_list_create();
players = ds_map_create();
kiklist = ds_list_create();
banlist = ds_list_create();

gameMap = ds_map_create();

if file_exists_ue(program_directory + "banlist.txt") {
	var file = file_text_open_read_ue(program_directory + "banlist.txt");
	var line = "";
	while (!file_text_eof_ue(file)) {
		line = file_text_readln_ue(file);
		ds_list_add(banlist, line);
	}
	file_text_close_ue(file);
}


alarm[1] = room_speed;