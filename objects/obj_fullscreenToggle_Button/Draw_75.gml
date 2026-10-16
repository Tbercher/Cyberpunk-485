var bw = 200;
var bh = 40;

//convert mouse to GUI space
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var hover = (mx >= x && mx <= x + bw &&
             my >= y && my <= y + bh);

//draw
draw_set_color(hover ? c_gray : c_dkgray);
draw_rectangle(x, y, x + bw, y + bh, false);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var label = window_get_fullscreen() ? "Fullscreen: ON" : "Fullscreen: OFF";
draw_text(x + bw/2, y + bh/2, label);

draw_self();
