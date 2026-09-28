if (room == Room1) {
    
    var road_inst = instance_find(obj_road, 0);

    if (road_inst != noone) {
        var road_left = road_inst.bbox_left + 48;
        var road_right = road_inst.bbox_right - 48;
        
        var spawn_x = irandom_range(road_left, road_right); 
        
        var enemy_to_spawn = choose(obj_enemy1, obj_enemy2);
        instance_create_depth(spawn_x, -64, -100, enemy_to_spawn);
    }

    alarm[1] = enemy_spawn_rate;
}