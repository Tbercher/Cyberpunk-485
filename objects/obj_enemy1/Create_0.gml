rewindController = instance_find(obj_rewindController, 0)

if (rewindController == noone) {
    rewindController = instance_find(obj_rewindController, 0);
	show_debug_message("not founddd")
	//show_debug_log(rewindController.gameStates)
}
else{
	if (rewindController.gameStates){
		show_debug_message("FOUNDDDD")
	rewindController.gameStates[0][$ id] = {
	x: x,
	y: y,
	image_angle: image_angle,
	object_index: object_index
	}
}
}