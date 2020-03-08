
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


if o_control.isRepair {
	ds_map_destroy(gameMap);
	
	var file = file_text_open_read_ue(program_directory+"Repair.amq");
	var jsonGame = file_text_readln_ue(file);
	gameMap = json_decode(jsonGame);
	file_text_close_ue(file);
	
	var arrList = gameMap[? "game_arr"];
	for (var i = 0; i < ds_list_size(arrList) / 4; i++) {
		o_history.game_arr[i, EData.name]     = arrList[| i * 4 + EData.name];
		o_history.game_arr[i, EData.pic]      = arrList[| i * 4 + EData.pic];
		o_history.game_arr[i, EData.songLink] = arrList[| i * 4 + EData.songLink];
		o_history.game_arr[i, EData.start]	= arrList[| real(i * 4 + EData.start)];
	}
	
	o_control.roundTotal = ds_list_size(arrList) / 4 - 1;
	o_control.roundCurrent = gameMap[? "roundCurrent"];
	o_control.roundTime = gameMap[? "roundTime"];
}
