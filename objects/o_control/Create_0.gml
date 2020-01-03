
//!#mfunc trace {"args":["message"],"order":[0]}
#macro trace_mf0  show_debug_message( 
#macro trace_mf1 )

#macro localhost "127.0.0.1"
#macro testport  10800

enum ENET {
    message_to_host,
    messgae_to_player
}

global.server = -1;
global.socket = -1;
network_set_config( network_config_connect_timeout, 1000);

connected_list = ds_list_create();

instance_deactivate_layer("layer_lobby");
instance_deactivate_layer("layer_settings");
instance_deactivate_layer("layer_game");

draw_set_font( fnt_ru);