var bw = 200;
var bh = 40;

//Hover check
var hover = (mouse_x >= x && mouse_x <= x + bw &&
             mouse_y >= y && mouse_y <= y + bh);
			 
draw_set_color(hover ? c_gray : c_dkgray);
draw_rectangle(x, y, x + bw, y + bh, false);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var label = window_get_fullscreen() ? "Fullscreen: ON" : "Fullscreen: OFF";
draw_text(x + bw/2, y + bh/2, label);
