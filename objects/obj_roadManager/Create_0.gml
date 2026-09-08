segmentsNeeded = ceil(room_height / obj_road.sprite_height) + 1;
var lastSegmentHeight = obj_road.y + obj_road.sprite_height;
for (var segment = 0; segment < segmentsNeeded; segment++){
	instance_create_layer(obj_road.x, lastSegmentHeight, "Instances",  obj_road);
	lastSegmentHeight -= obj_road.sprite_height;
}