playSe(a_but_mainmenu);

var newNickname = get_string("Как тебя звать?", o_control.nickname);

if (newNickname != "") {
    
    if string_length(newNickname) > nickLengMax
	    newNickname = string_copy(newNickname, 1, nickLengMax);
    
    o_control.nickname = newNickname;
    ini_open("player.conf");
    ini_write_string( "user", "nickname", newNickname);
    ini_close();
}