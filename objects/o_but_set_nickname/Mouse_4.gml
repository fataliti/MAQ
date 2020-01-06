audio_play_sound(a_but_next, 10, false);

var newNickname = get_string("nickname", o_control.nickname);

if (newNickname != "") {
    
    if string_length(newNickname) > nickLengMax
	    newNickname = string_copy(newNickname, 1, nickLengMax);
    
    o_control.nickname = newNickname;
    ini_open("player.conf");
    ini_write_string( "user", "nickname", newNickname);
    ini_close();
}