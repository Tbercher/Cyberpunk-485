if (obj_rewindController.rewindActive){
    alarm[0] = 60;
    exit;
}

var yPositioning = camera_get_view_y(view_camera[0]) - 50;
var xPositioning = random_range(350, 950);
var enemy = instance_create_layer(xPositioning, yPositioning, "Instances", obj_enemy1);
enemy.vspeed = 4;
alarm[0] = 60;
