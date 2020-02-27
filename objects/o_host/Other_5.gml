
var file = file_text_open_write_ue(program_directory + "banlist.txt");
for(var a = 0; a<ds_list_size(banlist); a++) {
	file_text_writeln_ue( file, banlist[| a]);
}
file_text_close_ue(file);

ds_list_destroy(connects);
ds_list_destroy(kiklist);
ds_list_destroy(banlist);
ds_map_destroy(players);