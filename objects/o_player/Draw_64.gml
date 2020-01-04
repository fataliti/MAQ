
color_mf0  c_green color_mf1;
draw_rectangle( x, y, x + 64, y + 20, true);
draw_rectangle( x, y, x + 64 * load_percent, y + 20, false);

draw_set_color( c_white);
draw_text( x, y, nick + ": " + string( points));

draw_set_color( c_red);
draw_text( x + 64, y, _id);
//draw_text( x + 96, y, ping);

color_mf0  c_orange color_mf1;
draw_text( x, y + 15, current_answer);
