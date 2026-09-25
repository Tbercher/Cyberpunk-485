gameStates = [{
	player: {
	x: obj_player.x,
	y: obj_player.y,
	image_sprite: 90,
	velocity: 0
	},
}];

/*
Either use an array of size 300, push new in and delete the 301th element for each frame. Or I can use dictionary with named keys from 1 to 100. Ima go with an Array
Decision 1. Array


How do we deal with deleting objects from all 300 game states in the array. Simple, loop through the array and delete the game object. Each obj in an element of the array should have an instance ID as the key. 
*/