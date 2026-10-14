if (keyboard_check_pressed(ord("I"))){
	global.invincibility = !global.invincibility;
}

if (keyboard_check_pressed(ord("N"))){
	room_goto_next();
}

if (keyboard_check_pressed(ord("B"))){
	//boost
    if (instance_exists(obj_player)){
        obj_player.isBoosted = !obj_player.isBoosted;
    }
}

if (keyboard_check_pressed(ord("P"))){
	//escort
    if (instance_exists(obj_player)){
        with(obj_player){
            event_user(1);  
        }
    }
}
