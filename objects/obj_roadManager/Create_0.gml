roadSegments = [];

var segmentsNeeded = ceil(room_height / obj_road.sprite_height) + 3;
lastSegmentHeight = obj_road.y - obj_road.sprite_height;

for (var i = 0; i < segmentsNeeded; i++) {
    var newSegment = instance_create_layer(obj_road.x, lastSegmentHeight, "Instances", obj_road);
    array_push(roadSegments, newSegment);
    lastSegmentHeight -= obj_road.sprite_height;
}

alarm[0] = level_duration_seconds * 60;

if (!variable_instance_exists(id, "enemy_spawn_rate")) {
    enemy_spawn_rate = 60;
}
alarm[1] = enemy_spawn_rate;