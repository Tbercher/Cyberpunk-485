if (camera_get_view_y(obj_player.cam) < lastSegmentHeight + obj_road.sprite_height){
	array_delete(roadSegments, 0, 1);
	var newSegment = instance_create_layer(obj_road.x, lastSegmentHeight, "Instances",  obj_road);
	array_push(roadSegments, newSegment);
	lastSegmentHeight -= obj_road.sprite_height;
}
