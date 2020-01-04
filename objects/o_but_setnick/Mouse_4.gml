
var new_nick = get_string( "nickname", o_control.my_nickname);

if new_nick != "" {
    o_control.my_nickname = new_nick;
    ini_open( "game.sets");
    ini_write_string( "user", "nickname", new_nick);
    ini_close();
}
