
draw_set_color( c_white);
draw_rectangle( x, y, x + 256, y + 192, false);
draw_set_color( c_black);

var get;
for( var a = 0; a < ds_list_size( game_list); a++) {
    get = game_list[| a];
    draw_text( x, y + 16 * a, get);
    
    if a == o_control.game_round
        draw_text( x + string_width( get), y + 16 * a, " <");
}