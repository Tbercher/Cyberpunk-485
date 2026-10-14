var bw = 200;
var bh = 40;

var hover = (mouse_x >= x && mouse_x <= x + bw &&
             mouse_y >= y && mouse_y <= y + bh);

if (hover && mouse_check_button_pressed(mb_left)) {
    var fs = !window_get_fullscreen();
    window_set_fullscreen(fs);
}
