var road_w = sprite_get_width(RoadStraight);
var road_h = sprite_get_height(RoadStraight);
var building_w = 540;
var building_h = 540;
var offset_x = (road_w / 2) + (building_w / 2) + 50; //roadside buffer
var offset_y = (road_h / 2) + (building_h / 2);
depth = 1;
image_xscale = 3;
image_yscale = 3;


//left
if (random_range(0, 1) > 0.5){
    var b = instance_create_layer(x - offset_x, y - offset_y, "Instances", obj_building);
} else {
    var p = instance_create_layer(x - offset_x, y - offset_y, "Instances", obj_policeBuilding);
    p.image_angle = 90;
}

//right
if (random_range(0, 1) > 0.5){
    var b = instance_create_layer(x + offset_x, y - offset_y, "Instances", obj_building);
} else {
    var p = instance_create_layer(x + offset_x, y - offset_y, "Instances", obj_policeBuilding);
    p.image_angle = 270;
}

