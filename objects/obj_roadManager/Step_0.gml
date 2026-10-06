if (!instance_exists(obj_player)){
    exit;
}

if (camera_get_view_y(obj_player.cam) < lastSegmentHeight + obj_road.sprite_height){
	array_delete(roadSegments, 0, 3);
	var newSegment = instance_create_layer(obj_road.x, lastSegmentHeight, "Instances",  obj_road);
	var leftSegment = instance_create_layer(obj_road.x-obj_roadside.sprite_width, lastSegmentHeight, "Instances",  obj_roadside);
	var rightSegment = instance_create_layer(obj_road.x+obj_roadside.sprite_width, lastSegmentHeight, "Instances",  obj_roadside);
	array_push(roadSegments, newSegment);
	array_push(roadSegments, leftSegment);
	array_push(roadSegments, rightSegment);
	lastSegmentHeight -= obj_road.sprite_height;
}


