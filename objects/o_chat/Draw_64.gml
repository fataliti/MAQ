draw_set_halign(fa_left);
draw_self();
draw_set_color(c_white);

for (var i = 0; i < ds_list_size(messages); i++) {
    draw_text( x, (y - 18) - 16 * i, messages[| i]);
}

draw_text(x, y, textfield_string);
if textfield_active {
    draw_text_color(x+string_width(textfield_string), y, "|", c_white, c_white, c_white, c_white, round(abs(sin(get_timer()/500000))));
}
draw_set_halign(fa_center);
