var elapsed = current_time - notification_start;

if (elapsed >= notification_duration) {
    instance_destroy();
    exit;
}

var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var alpha = 1;

if (elapsed > notification_fade_start) {
    alpha = 1 - ((elapsed - notification_fade_start)
        / (notification_duration - notification_fade_start));
}

draw_set_font(-1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_alpha(alpha);
draw_text(gui_width / 2, gui_height * 0.8, "Press Shift + Enter to rewind");

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);