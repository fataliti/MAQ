draw_set_color(c_white);
draw_rectangle(x, y, x + 256, y + 192, false);
draw_set_color(c_black);

for (var i = 0; i < ds_list_size(messages); i++) {
    draw_text( x, y + 16 * i, messages[| i]);
}