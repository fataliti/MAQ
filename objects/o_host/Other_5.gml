
if file_exists("banlist.txt") {
	file_delete("banlist.txt");
}
var file = file_text_open_write("banlist.txt");
for(var a = 0; a<ds_list_size(banlist); a++) {
	file_text_write_string( file, banlist[| a]);
	file_text_writeln(file);
}
file_text_close(file);

ds_list_destroy(connects);
ds_list_destroy(kiklist);
ds_list_destroy(banlist);
ds_map_destroy(players);