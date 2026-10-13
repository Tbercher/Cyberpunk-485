if (!active){
	visible = false;
	solid = false;
	mask_index = -1;
	exit;
}
visible = true;
solid = true;
mask_index = sprite_index;
// Follow Player movement

if (instance_exists(obj_player)) {
image_angle = obj_player.image_angle;
velocity = obj_player.velocity;

yChange = lengthdir_y(velocity, image_angle);

var offset_distance = point_distance(0, 0, follow_offset_x, follow_offset_y);
var offset_direction = point_direction(0, 0, follow_offset_x, follow_offset_y);

var rotated_direction = offset_direction + (obj_player.image_angle - 90);

x = obj_player.x + lengthdir_x(offset_distance, rotated_direction);
y = obj_player.y + lengthdir_y(offset_distance, rotated_direction);
image_angle = obj_player.image_angle;
}
else{
	instance_destroy();
}