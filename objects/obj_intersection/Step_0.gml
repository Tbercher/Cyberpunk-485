if (instance_exists(obj_player) && (point_distance(x, y, obj_player.x, obj_player.y) < 800) && !bossCreated){
    instance_create_layer(x-1200, y-100, "Instances", obj_boss);
	var rightBoss = instance_create_layer(x+1200, y+100, "Instances", obj_boss);
	rightBoss.image_angle = 0;
    bossCreated = true;
}