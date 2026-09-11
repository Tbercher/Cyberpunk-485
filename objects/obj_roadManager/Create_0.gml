roadSegments = []
var segmentsNeeded = ceil(room_height / obj_road.sprite_height) + 1;
lastSegmentHeight = obj_road.y + obj_road.sprite_height;
for (var segment = 0; segment < segmentsNeeded; segment++){
	var newSegment = instance_create_layer(obj_road.x, lastSegmentHeight, "Instances",  obj_road);
	array_push(roadSegments, newSegment);
	lastSegmentHeight -= obj_road.sprite_height;
}
