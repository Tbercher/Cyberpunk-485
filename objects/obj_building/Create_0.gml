depth = -1;
var road = instance_nearest(x, y, obj_road);
//list of random buildings
var spr_list = [Building1, Building2, building3]
// on creation choose a random building
sprite_index = spr_list[irandom(array_length(spr_list) - 1)]

if (sprite_index == building3) {
	image_angle = 90
    if (x < road.x) {
        image_angle = 90;
    } else {
        image_angle = 270;
    }
} else {
    image_angle = choose(0, 90, 180, 270);
}

