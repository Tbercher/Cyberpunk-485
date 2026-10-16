var bw = 200;
var bh = 40;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var hover = (mx >= x && mx <= x + bw &&
             my >= y && my <= y + bh);

if (hover && mouse_check_button_pressed(mb_left)) {
    var fs = !window_get_fullscreen();
    window_set_fullscreen(fs);
}
