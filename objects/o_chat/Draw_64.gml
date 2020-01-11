draw_set_halign(fa_left);
draw_self();
draw_set_color(c_white);

if !surface_exists(chatSurf) {surface_create(sprite_get_width(sprite_index), sprite_get_height(sprite_index));}
surface_set_target(chatSurf);
draw_clear_alpha(c_black,0);
var msg, yy = 235;
for (var i = 0; i < ds_list_size(messages); i++) {
    msg = messages[| i];
    yy -= string_height_ext( msg, 12, 245);
    draw_text_ext( 5, yy, msg, 18 , 245);
}
surface_reset_target();
draw_surface(chatSurf, x, y+3);


var msgCut = textfield_string;

if string_width(msgCut) > 246 {
    var len = 246/string_width("a");
    msgCut = string_copy(msgCut, string_length(msgCut) - 246/string_width("a"), string_length(msgCut));
}

if string_length(msgCut) > 0 || textfield_active{
    draw_text(x+5, y+245, msgCut);
} else {
    draw_text(x+5, y+245, "Написать в чат");
}
if textfield_active {
    draw_text_color(x+5+string_width(msgCut), y+245, "|", c_white, c_white, c_white, c_white, round(abs(sin(get_timer()/500000))));
}
draw_set_halign(fa_center);
