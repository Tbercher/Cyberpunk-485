spawnTypes = {};

spawnTypes[$ string(obj_enemy1)] = {
    objectType: obj_enemy1,
    spawnTime: 60,
    timer: 60
}
spawnTypes[$ string(obj_enemy2)] = {
    objectType: obj_enemy2,
    spawnTime: 75,
    timer: 75
}

rewindController = instance_find(obj_rewindController, 0);

if (rewindController != noone) {
    rewindController.gameStates.objects[$ string(real(id))] = ["spawnTypes"]
}