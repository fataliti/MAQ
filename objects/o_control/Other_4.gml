// todo: переделать на Rooms
instance_deactivate_layer("layer_lobby");       
instance_deactivate_layer("layer_settings");
instance_deactivate_layer("layer_game");

// Подключение шрифта: русский
draw_set_font(fnt_ru);

// Проверка пинга
alarm[1] = tickrate;

// Выравнивание рисуемого текста
draw_set_halign(fa_center);
draw_set_valign(fa_center);