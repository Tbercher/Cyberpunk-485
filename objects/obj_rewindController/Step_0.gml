/* 
This is what the gameStates variable should look like, with only the player as reference. The actual variable should have many more objects and values.

gameStates = {
	objects:
	{
		$playerid: ["x", "y", "image_angle", "velocity"]
	},
	values: [
		{
		$playerid: {
			x: obj_player.x,
			y: obj_player.y,
			image_angle: 90,
			velocity: 0
			}
		}
	]
}

The rewind mechanic's main usecase is that if you're coming up on an intersection and notice that you don't have enough time to stop for the coming cars or to speed up and avoid them hitting you, you can rewind and have a few more seconds to alter your pace for the coming intersection. 
*/

if (canRewind && keyboard_check(vk_space) && keyboard_check(vk_shift)){
if (!rewindActive){
	alarm[0] = rewindTime - 1;
	show_debug_message("rewind activated");
}
rewindActive = true;
}

if (!rewindActive){
	if (array_length(gameStates.values) < rewindTime){
	array_push(gameStates.values, {})
	}
	else{
		array_delete(gameStates.values, 0, 1)
		array_push(gameStates.values, {})
	}
}

var newest_index = array_length(gameStates.values) - 1;
for (var i = 0; i < variable_struct_names_count(gameStates.objects); i++){
	var currentObj = variable_struct_get_names(gameStates.objects)[i];
	if (!rewindActive){
		gameStates.values[newest_index][$ currentObj] = {}
	}
	var currentValues = gameStates.values[newest_index][$ currentObj];
	var cachedState = undefined;
	var holdCachedState = false;
	if (rewindActive){
		//when we have history for the obj
		if (is_struct(currentValues)){
			rewindCache[$ currentObj] = {
				values: variable_clone(currentValues),
				missingFrames: 0
			};
		}
		//when we don't have history for the object and the object is in the rewindCache
		else if (variable_struct_exists(rewindCache, currentObj)){
			cachedState = rewindCache[$ currentObj];
			cachedState.missingFrames += 1;
			currentValues = cachedState.values;
		}
	}
	else if (variable_struct_exists(rewindCache, currentObj)){
		cachedState = rewindCache[$ currentObj];
		if (cachedState.missingFrames > 0){
			holdCachedState = true;
			cachedState.missingFrames -= 1;
		}		
		else{
			//rewind is over so we don't need any rewind cache for objects with no mising frames
			variable_struct_remove(rewindCache, currentObj);
		}
	}

	for (var j = 0; j < array_length(gameStates.objects[$ currentObj]); j++){
		var currentVar = gameStates.objects[$ currentObj][j] 
		if (!rewindActive){
			// save the values that are currently in these variables to the values array. 
			if (instance_exists(real(currentObj))) {
				if (holdCachedState){
					var cachedValue = cachedState.values[$ currentVar];

					variable_instance_set(real(currentObj), currentVar, cachedValue);

					currentValues[$ currentVar] = cachedValue;
				}
				else{
					currentValues[$ currentVar] = variable_instance_get(real(currentObj), currentVar)
				}
			}
		}
		else{
			// Older frames may not contain objects spawned after those frames were recorded.
			if (instance_exists(real(currentObj)) && is_struct(currentValues)) {
				var lastValue = currentValues[$ currentVar];
				variable_instance_set(real(currentObj), currentVar, lastValue);
			}
		}
	}
}

if (rewindActive && newest_index >= 0) {
    array_delete(gameStates.values, newest_index, 1);

    var cam = view_camera[0];
    camera_set_view_pos(
        cam,
        0,
        obj_player.y - camera_get_view_height(cam) / 2
          - camera_get_view_height(cam) / 4
    );
}
/*
if (keyboard_check_pressed(vk_space)) {
	show_debug_message(string(gameStates.values[newest_index]));
}
*/


