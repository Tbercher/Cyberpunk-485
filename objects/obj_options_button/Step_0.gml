var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var bw = sprite_width;
var bh = sprite_height;
var hover = (mx >= x && mx <= x + bw &&
             my >= y && my <= y + bh);
if (hover) {
    target_scale = 1 + hover_amount;
} else {
    target_scale = 1;
}
//animate
scale = lerp(scale, target_scale, hover_speed);

image_xscale = scale;
image_yscale = scale;

if (hover && mouse_check_button_pressed(mb_left)) {
    room_goto(Room_options);
}