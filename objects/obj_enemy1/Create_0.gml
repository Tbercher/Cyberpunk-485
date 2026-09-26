rewindController = instance_find(obj_rewindController, 0)
/*
if (rewindController == noone) {
    rewindController = instance_find(obj_rewindController, 0);
	show_debug_message("not founddd")
	//show_debug_log(rewindController.gameStates)
}
else{
	if (instance_exists(obj_rewindController)){
	show_debug_message("FOUNDDDD")

}
}
*/

obj_rewindController.gameStates.objects[$ string(real(id))] = ["x", "y", "image_angle", "velocity"]