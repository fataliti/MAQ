ini_open("banlist.ini");
ini_write_real("ban","count",ds_list_size(banlist));
for(var a = 0; a<ds_list_size(banlist); a++) {
	ini_write_string("ip_list", "ip_"+string(a), banlist[| a]);
}
ini_close();