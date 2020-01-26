
connects = ds_list_create();
players = ds_map_create();
kiklist = ds_list_create();
banslis = ds_list_create();

ini_open("banlist.ini");
var _ip;
for(var a = 0; a < ini_read_real("ban","count",0); a++){
	_ip = ini_read_string("ip_list", "ip_"+string(a), "");
	if _ip != ""{
		ds_list_add(banslis, _ip);
	}
}
ini_close();