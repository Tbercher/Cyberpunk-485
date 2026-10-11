if (policeTimer <= 0){
	for (var i = instance_number(obj_policeCar)-1; i >= 0; i--){
	if (instance_find(obj_policeCar, i) == obj_player){
		continue;
	}
	instance_destroy(instance_find(obj_policeCar, i));
}
}