roadSegments = [];
spawnBuilding = random_range(0, 1) > 0.5;

var segmentsNeeded = ceil(room_height / obj_road.sprite_height) + 3;
lastSegmentHeight = obj_road.y - obj_road.sprite_height;

for (var i = 0; i < segmentsNeeded; i++) {
    var newSegment = instance_create_layer(obj_road.x, lastSegmentHeight, "Instances", obj_road);
    array_push(roadSegments, newSegment);
    var leftRoadSideSegment = instance_create_layer(obj_road.x-obj_road.sprite_width, lastSegmentHeight, "Instances", obj_roadside);
    array_push(roadSegments, leftRoadSideSegment);
    var rightRoadSideSegment = instance_create_layer(obj_road.x+obj_road.sprite_width, lastSegmentHeight, "Instances", obj_roadside);
    array_push(roadSegments, rightRoadSideSegment);
    lastSegmentHeight -= obj_road.sprite_height;
}