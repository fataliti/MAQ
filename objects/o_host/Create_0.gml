
connects = ds_list_create();
players = ds_map_create();
kiklist = ds_list_create();
banlist = ds_list_create();


if file_exists("banlist.txt") {
	var file = file_text_open_read("banlist.txt");
	var line = "";
	while (!file_text_eof(file)) {
		line = file_text_read_string(file);
		ds_list_add(banlist, line);
		file_text_readln(file);
	}
	file_text_close(file);
}