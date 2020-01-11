draw_self();

draw_set_color(c_white);
draw_text(x, y, textfield_string);
if textfield_active {
    draw_text_color(x+string_width(textfield_string)/2 + 8, y, "<", c_white, c_white, c_white, c_white, round(abs(sin(get_timer()/500000))));
    draw_text_color(x-string_width(textfield_string)/2 - 8, y, ">", c_white, c_white, c_white, c_white, round(abs(sin(get_timer()/500000))));
}
