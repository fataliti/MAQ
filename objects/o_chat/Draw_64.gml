
draw_set_color( c_white);
draw_rectangle( x, y, x + 256, y + 192, false);
draw_set_color( c_black);

for( var a = 0; a < ds_list_size( messages); a++) {
    draw_text( x, y + 16 * a, messages[| a]);
}