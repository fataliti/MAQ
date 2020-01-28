ini_open("banlist.ini");
ini_write_real("ban","count",ds_list_size(banlist));
for(var a = 0; a<ds_list_size(banlist); a++) {
	ini_write_string("ip_list", "ip_"+string(a), banlist[| a]);
}
ini_close();

ds_list_destroy(connects);
ds_list_destroy(kiklist);
ds_list_destroy(banlist);
ds_map_destroy(players);