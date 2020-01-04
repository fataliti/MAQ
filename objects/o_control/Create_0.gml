
//макрофункции
//!#mfunc trace {"args":["message"],"order":[0]}
#macro trace_mf0  show_debug_message( 
#macro trace_mf1 )
//!#mfunc color {"args":["col"],"order":[0]}
#macro color_mf0      draw_set_color( 
#macro color_mf1 )

//макро
#macro localhost "127.0.0.1"
#macro testport  10800

#macro round_time   15
#macro testfile     "https://vk.com/doc176753353_530976061?hash=382f32abc656a91266&dl=f6194d41504d2b3ff9"
#macro tickrate     3 // 1 запрос в n кадров

//енумератор для пакетов
enum ENET {

    message,
    
    about_player,
    get_playerinfo,
    send_all_new_player,
    player_disconect,

    add_point,
    kick,
    
    answer,

    game_round_prep,
    game_round_start,
    game_round_end,
    game_round_answer,
    game_round_next,
    
    game_round_preparing_perc,
    /*
    ping_chek, 
    ping_get,
    */
}

//хост
global.server = -1;
global.socket = -1;
network_set_config( network_config_connect_timeout, 1000);

is_host = false;
connected_list = ds_list_create();
players_map  = ds_map_create();
players_ids = 0;

/// юзерские данные
var def_nick = string( current_minute) + "_" + string( current_second);
ini_open("game.sets");
my_nickname = ini_read_string( "user", "nickname", def_nick);
ini_close();
my_avatar = sprite_add( "avatar.png", 1, false, 0, 0, 0);
my_id     = -1;

/// текущая игра
game_round = 0;
game_timer = 0;
game_song = -1;

song_link = -1;
song_loaded = 0;
song_stream = -1;

//ping_time_send = -1;