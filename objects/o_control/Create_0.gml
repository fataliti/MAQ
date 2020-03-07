instance_create_depth(0, 0, 0, o_text_autocomplete);

if !file_exists("sound.conf"){
	ini_open("sound.conf");
	ini_write_real("game", "gain_se", 0.5);
	ini_write_real("game", "gain_music", 0.5);
	ini_write_real("game", "gain_bgm", 0.5);
	ini_close();
}
var wDir = filename_path("sound.conf");

// Макрофункции
//!#mfunc log {"args":["msg"],"order":[[2,"__FILE__"],[2,"__LINE_STR__"],0]}
#macro log_mf0  show_debug_message("[" + 
#macro log_mf1  + ":" + 
#macro log_mf2  + "] " + string(
#macro log_mf3 ))
//!#mfunc trace {"args":["message"],"order":[0]}
#macro trace_mf0  show_debug_message(
#macro trace_mf1 )
//!#mfunc color {"args":["col"],"order":[0]}
#macro color_mf0  draw_set_color(
#macro color_mf1 )
//!#mfunc inRect {"args":["x1"," y1"," x2"," y2"],"order":[0,1,2,3]}
#macro inRect_mf0  point_in_rectangle(mouse_x, mouse_y, 
#macro inRect_mf1 , 
#macro inRect_mf2 , 
#macro inRect_mf3 , 
#macro inRect_mf4 )
//!#mfunc LMB {"args":[],"order":[]}
#macro LMB_mf0  mouse_check_button_pressed(mb_left)


// Макроперменные
#macro localhost "127.0.0.1" //"192.168.0.3"
#macro port 10800
// todo: вынести размер лобби и отсчёт времени в создание игры
#macro size 32
#macro timer 25
#macro tickrate 3
#macro avatarSize 128
#macro nickLengMax 12
#macro multiUser true

#macro chatCol $81ADFF

ini_open("sound.conf");
global.gain_se = ini_read_real("game", "gain_se", 0.5);
global.gain_music = ini_read_real("game", "gain_music", 0.5);
global.gain_bgm = ini_read_real("game", "gain_bgm", 0.5);
ini_close();


randomize();
var bgms = choose(
	bgm_mainmenu1,
	bgm_mainmenu2,
	bgm_mainmenu3
);
global.bgm = audio_play_sound(bgms, 10, false);
audio_sound_gain(global.bgm, global.gain_bgm, 0);

BGMenable = true;
audioOn = true;
snowOn  = true;

if current_month >= 3 && current_month <= 11
	snowOn = false;

#region Енумераторы
// Действия
enum ENet {
	connected = 1,
	information = 2,
	announceForNew = 3,
	announceForAll = 4,
	disconnected = 5,
	gameOver = 6,
}
enum EPing {
	check = 10,
	get = 11
}
enum ESong {
	prepare = 20,
	status = 21,
	play = 22,
	stop = 23,
	answer = 24,
	next = 25,
	hint = 26,
	skip = 27,
}
enum EChat {
	message = 31
}
enum EPlayer {
	avatar = 40,
	answer = 41,
	kick = 43,
    ban = 44,
    pointPlus = 45,
    pointMinus = 46,
    excepted = 47,
}


#endregion

// Настройки сервера/клиента
global.server = -1;
global.socket = -1;
network_set_config(network_config_connect_timeout, 999);

// Инициализация данных игрока запустившего игру
avatar = sprite_add("avatar.png", 1, 0, 1, 0, 0);
if (avatar != -1) {
	if (sprite_get_width(avatar) != avatarSize && sprite_get_height(avatar) != avatarSize) {
		var surf = surface_create(avatarSize, avatarSize);
	    surface_set_target(surf);
	    draw_clear_alpha(c_black, 0);
	    draw_sprite_ext(avatar, 0, 0, 0, avatarSize / sprite_get_width(avatar), avatarSize / sprite_get_height(avatar), 0, c_white, 1);    
	    surface_reset_target();
	    surface_save(surf, "avatar.png");
	    surface_free(surf);
	    sprite_delete(avatar);
	    avatar = sprite_add("avatar.png", 1, 0, 1, 0, 0);
	}
}

ini_open("player.conf");
nickname = ini_read_string("user", "nickname", "Noname_t"+string(current_minute)+"_"+string(current_second));
if (string_length(nickname) > nickLengMax)
	nickname = string_copy(nickname, 1, nickLengMax);
ini_close();

// Данные исходящие от хоста
roundCurrent = 0;
roundTotal = 0;
countdown = -1;
roundTime = timer;
global.gameState = ESong.next;
gameOver = false;

// Данные у всех
songFile	= -1;
songPic 	= -1;
songSprite	= -1;
mediaPlayer = -1;
hinted		= false;
skipPlayers = 0;

songPath = SetPath(wDir + "guess.ogg");
//!#mfunc GetPath {"args":[],"order":[]}
#macro GetPath_mf0  o_control.songPath

lambda_game_restore = __lf_o_control_create_lambda_game_restore;

