gameStates = {
	objects:
	{
	},
	values: [
		{
		}
	]
}

gameStates.objects[$ string(real(obj_player.id))] = ["x", "y", "image_angle", "velocity"]
gameStates.values[0][$ string(real(obj_player.id))] = {
			x: obj_player.x,
			y: obj_player.y,
			image_angle: 90,
			velocity: 0
}

canRewind = false
rewindActive = false
alarm[1] = rewindTime;
/*
Either use an array of size 300, push new in and delete the 301th element for each frame. Or I can use dictionary with named keys from 1 to 100. Ima go with an Array
Decision 1. Array


How do we deal with deleting objects from all 300 game states in the array. Simple, loop through the array and delete the game object. Each obj in an element of the array should have an instance ID as the key. 
*/