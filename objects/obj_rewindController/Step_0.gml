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
*/
if (rewindMeter == 100 && keyboard_check(vk_space) && keyboard_check(vk_shift)){
if (!rewindActive){
	alarm[0] = 300;
}
rewindActive = true;
show_debug_message("rewind activated");
}

if (!rewindActive){
	if (array_length(gameStates.values) < 300){
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
	for (var j = 0; j < array_length(gameStates.objects[$ currentObj]); j++){
		var currentVar = gameStates.objects[$ currentObj][j] 
		if (!rewindActive){
			// save the values that are currently in these variables to the values array. 
			currentValues[$ currentVar] = variable_instance_get(real(currentObj), currentVar)
		}
		else{
			// set variables to previous gamestate values for rewind. 
			var lastValue = gameStates.values[newest_index][$ real(currentObj)][$ currentVar]
			show_debug_message("currentObj: " + string(currentObj));
			show_debug_message("currentVar: " + string(currentVar));
			show_debug_message("lastValue: " + string(lastValue));
			variable_instance_set(real(currentObj), currentVar, lastValue)

		}
	}
}
if (rewindActive && newest_index > 0){
	array_delete(gameStates.values, newest_index, 1);
}
/*
if (keyboard_check_pressed(vk_space)) {
	show_debug_message(string(gameStates.values[newest_index]));
}
*/


