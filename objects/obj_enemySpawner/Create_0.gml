spawnTypes = {};

spawnTypes[$ string(obj_enemy1)] = {
    objectType: obj_enemy1,
    spawnTime: 80,
    timer: 80
}
spawnTypes[$ string(obj_enemy2)] = {
    objectType: obj_enemy2,
    spawnTime: 90,
    timer: 90
}
spawnTypes[$ string(obj_powerUp)] = {
    objectType: obj_powerUp,
    spawnTime: 110,
    timer: 110
}

rewindController = instance_find(obj_rewindController, 0);

if (rewindController != noone) {
    rewindController.gameStates.objects[$ string(real(id))] = ["spawnTypes"]
}