event_inherited();

var camera = view_camera[0];
var camera_bottom = camera_get_view_y(camera) + camera_get_view_height(camera);

if (y > camera_bottom && alarm[0] < 0) {
    alarm[0] = 300;
}
