if (camera_get_view_y(obj_player.cam) < lastSegmentHeight + obj_road.sprite_height){
	array_delete(roadSegments, 0, 4);
	var newSegment = instance_create_layer(obj_road.x, lastSegmentHeight, "Instances",  obj_road);
	var leftSegment = instance_create_layer(obj_road.x-obj_roadside.sprite_width, lastSegmentHeight, "Instances",  obj_roadside);
	var rightSegment = instance_create_layer(obj_road.x+obj_roadside.sprite_width, lastSegmentHeight, "Instances",  obj_roadside);
	var building = instance_create_layer(obj_road.x-obj_road.sprite_width, lastSegmentHeight, "Instances", obj_building);
	array_push(roadSegments, newSegment);
	array_push(roadSegments, leftSegment);
	array_push(roadSegments, rightSegment);
	array_push(roadSegments, building);
	lastSegmentHeight -= obj_road.sprite_height;
}


