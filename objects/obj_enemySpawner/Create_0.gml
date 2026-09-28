spawnTypes = {};

spawnTypes[$ string(obj_enemy1)] = {
    objectType: obj_enemy1,
    spawnTime: 60,
    timer: 60
}

rewindController = instance_find(obj_rewindController, 0);

if (rewindController != noone) {
    rewindController.gameStates.objects[$ string(real(id))] = ["spawnTypes"]
}