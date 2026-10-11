player = noone
if (instance_exists(obj_player)){    
    for (var i = 0; i < instance_number(obj_player); i++){
        if (instance_find(obj_player, i).object_index == obj_player){
            player = instance_find(obj_player, i)
        }
    }
    if (player){
        if (point_distance(x, y, player.x, player.y) < 200){
            if (beenTriggered) {
                exit;
            }
            with(player){
                if (object_index != obj_player)
                {
                    exit;
                }
                event_user(1);  
                beenTriggered = true;
            }
        }
    }}