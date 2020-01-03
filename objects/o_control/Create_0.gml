
//макрофункции
//!#mfunc trace {"args":["message"],"order":[0]}
#macro trace_mf0  show_debug_message( 
#macro trace_mf1 )
//!#mfunc color {"args":["col"],"order":[0]}
#macro color_mf0     draw_set_color( 
#macro color_mf1 )

//макро
#macro localhost "127.0.0.1"
#macro testport  10800

//енумератор для пакетов
enum ENET {
    message_to_host,
    messgae_to_player,
    
    /*
    coonect_as_player,
    connect_as_host,
    
    new_player,
    accept_player,
    non_accept_player,
    */
    
    about_player,
    get_playerinfo,
    send_all_new_player,
    player_disconect,

    add_point,
}


//хост
global.server = -1;
global.socket = -1;
network_set_config( network_config_connect_timeout, 1000);

is_host = false;
connected_list = ds_list_create();
players_map  = ds_map_create();
players_ids = 0;

//отключение ненужных слоев на старте
instance_deactivate_layer("layer_lobby");       
instance_deactivate_layer("layer_settings");
instance_deactivate_layer("layer_game");

//шрифт с русскими буквами
draw_set_font( fnt_ru);

/// юзерские данные
my_nickname = string( current_minute) + "_" + string( current_second);
my_avatar = -1; // 
my_id     = -1;