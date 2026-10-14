//knob position
var knob_x = x + (slider_value * slider_width);
var knob_y = y + 4;
var knob_radius = 6;

var over_knob = point_distance(mouse_x, mouse_y, knob_x, knob_y) <= knob_radius;

//Check if mouse is over bar
var over_bar = (mouse_x >= x && mouse_x <= x + slider_width &&
                mouse_y >= y && mouse_y <= y + 8);

//If clicking knob OR the bar
if (mouse_check_button(mb_left) && (over_knob || over_bar)) {

    var local_x = clamp(mouse_x - x, 0, slider_width);
    slider_value = local_x / slider_width;

    global.volume = slider_value;
    audio_master_gain(global.volume);
}
