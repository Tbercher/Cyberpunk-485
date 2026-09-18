rewindController = instance_find(obj_rewindController, 0)

if (rewindController == noone) {
    rewindController = instance_find(obj_rewindController, 0);
	show_debug_log("not founddd")
	//show_debug_log(rewindController.gameStates)
}
else{
	show_debug_log("FOUNDDDDD")
	rewindController.gameStates[$ id] = {
	x: x,
	y: y,
	image_angle: image_angle,
	object_index: object_index
}
}
/*rewindController.gameStates[$ id] = {
	x: x,
	y: y,
	image_angle: image_angle,
	object_index: object_index
}
*/