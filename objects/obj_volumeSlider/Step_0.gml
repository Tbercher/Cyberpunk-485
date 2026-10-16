var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

//Knobposition
var knob_x = x + (slider_value * slider_width);
var knob_y = y + 4;
var knob_radius = 6;

//if mouse is over knob
var over_knob = point_distance(mx, my, knob_x, knob_y) <= knob_radius;
//if mouse is over bar
var over_bar = (mx >= x && mx <= x + slider_width &&
                my >= y && my <= y + 8);

//if clicking knob OR the bar
if (mouse_check_button(mb_left) && (over_knob || over_bar)) {
    var local_x = clamp(mx - x, 0, slider_width);
    slider_value = local_x / slider_width;
    global.volume = slider_value;
    audio_master_gain(global.volume);
}
