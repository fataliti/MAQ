
//отключение ненужных слоев на старте
instance_deactivate_layer("layer_lobby");       
instance_deactivate_layer("layer_settings");
instance_deactivate_layer("layer_game");

//шрифт с русскими буквами
draw_set_font( fnt_ru);

//alarm[ 1] = tickrate;