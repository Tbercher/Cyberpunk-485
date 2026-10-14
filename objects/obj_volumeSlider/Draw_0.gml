draw_set_color(c_grey);
draw_rectangle(x, y, x + slider_width, y + 8, false);
var knob_x = x + (slider_value * slider_width);
draw_set_color(c_green);
draw_circle(knob_x, y + 4, 12, false);
draw_set_color(c_white);
draw_text(x, y - 40, "Volume");
