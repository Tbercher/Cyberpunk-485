if (!instance_exists(obj_player)){
    exit;
}
player = noone
if (instance_exists(obj_player)){    
    for (var i = 0; i < instance_number(obj_player); i++){
        if (instance_find(obj_player, i).object_index == obj_player){
            player = instance_find(obj_player, i)
        }
    }
}

if (camera_get_view_y(player.cam) < lastSegmentHeight + obj_road.sprite_height){
	array_delete(roadSegments, 0, 3);
	var road = obj_road;
	if (irandom(99) < 8){
		var road = obj_intersection;
	}
	var newSegment = instance_create_layer(obj_road.x, lastSegmentHeight, "Instances",  road);
	var leftSegment = instance_create_layer(obj_road.x-10, lastSegmentHeight, "Instances",  obj_roadside);
	var rightSegment = instance_create_layer(obj_road.x+10, lastSegmentHeight, "Instances",  obj_roadside);
	array_push(roadSegments, newSegment);
	array_push(roadSegments, leftSegment);
	array_push(roadSegments, rightSegment);
	lastSegmentHeight -= obj_road.sprite_height;
}


