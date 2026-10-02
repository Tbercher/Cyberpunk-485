//Find rewind controller if not found already
if (!variable_instance_exists(id, "rewindController")){
    rewindController = instance_find(obj_rewindController, 0);

    if (rewindController != noone) {
        rewindController.gameStates.objects[$ string(real(id))] = ["spawnTypes"]
    }
}

function hasHeldEnemy(enemyType){
    var cacheNames = variable_struct_get_names(obj_rewindController.rewindCache);

    for (var i = 0; i < array_length(cacheNames); i++){
        var objectId = cacheNames[i];
        var cachedState = rewindController.rewindCache[$ objectId];

        if (
            instance_exists(real(objectId)) &&
            cachedState.missingFrames > 0 &&
            variable_instance_get(real(objectId), "object_index") == enemyType
<<<<<<< Updated upstream
        ){
=======
        ) 
		{
>>>>>>> Stashed changes
            return true;
        }
    }

    return false;
}

function spawn_enemy(enemyType){
    var yPositioning = camera_get_view_y(view_camera[0]) - 50;
    var xPositioning = random_range(350, 950);
    var enemy = instance_create_layer(xPositioning, yPositioning, "Instances", enemyType);
    
    //Set enemy's speed
    enemy.vspeed = 4;
}

//If rewind is active, exit the alarm event to prevent spawning or further messing with the spawn timer that's being currently controller by the rewind controller
if (obj_rewindController.rewindActive){
    exit;
}

// Spawn Enemies, skipping over enemies that were already spawned pre-rewind. 
// Get all different types of enemies
var spawnTypeNames = variable_struct_get_names(spawnTypes);
// Loop through different kinds of enemies
for (var i = 0; i < array_length(spawnTypeNames); i++){
    //store current iteration of enemy type in a variable for easier access
    var spawnType = spawnTypes[$ spawnTypeNames[i]];

    // if this type of enemy's timer is 0, that means it's time to spawn a new enemy o this type, BUT we must skip this spawn if this is an instance where this enemy was spawned pre-rewind and is currently being held in the rewind cache.
    if (spawnType.timer <= 0){
        if (!hasHeldEnemy(spawnType.objectType)){
            spawn_enemy(spawnType.objectType);
        }
        spawnType.timer = spawnType.spawnTime;
    }
    // if it's not ready to spawn an enemy then decrement the timer
    else{
        spawnType.timer -= 1;
    }
}