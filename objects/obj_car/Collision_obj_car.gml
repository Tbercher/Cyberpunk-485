
var isPolice = false;

// if the collision is between a boss and the player then only process on the boss's end. 
if (other.object_index == obj_boss){
    exit;
}

// only allow either police cars, bosses, or players to process the collision
if ((object_index != obj_player) && (object_index != obj_policeCar) && (object_index != obj_boss)){
    exit;
}
// if this is a police car and it's inactive, exit
if (object_index == obj_policeCar){
    isPolice = true;
    if (!active){
        exit;
    }
}

// if the other car is a police car and it's inactive, exit
if (other.object_index == obj_policeCar && !other.active){
    exit;
}

// police cars should not collide with each other
if (object_index == obj_policeCar && other.object_index == obj_policeCar){
    exit;
}

// players should not collide with police cars
if ((object_index == obj_player && other.object_index == obj_policeCar) || (object_index == obj_policeCar && other.object_index == obj_player)){
    exit;
}

// Find the direction between the cars?
var distanceX = other.x - x;
var distanceY = other.y - y;


//calculate the straight line distance between two points, (0, 0) and (distanceX, distanceY). This effectively gives us the distance between the two cars. 
var distance = point_distance(0, 0, distanceX, distanceY);

// later we're going to divide by distance so we need to avoid diving by 0. If 
if (distance <= 0){
    distanceX = lengthdir_x(1, image_angle);
    distanceY = lengthdir_y(1, image_angle);
    distance = 1;
}
    
//normalize the distance vector
distanceX = distanceX / distance;
distanceY = distanceY / distance;

if (object_index == obj_player) {
    x -= distanceX * impactFactor;
    y -= distanceY * impactFactor;
}


other.crashVelocityX -= -distanceX * 2 * impactFactor;
other.crashVelocityY -= -distanceY * 2 * impactFactor;

if (object_index == obj_boss){
    other.healthPercent = 0;
    global.gameOver = true;
    instance_destroy(other);
}

if (object_index == obj_player && !global.invincibility){
	healthPercent -= 5;
    obj_scoreboard.floatScore = max(0, obj_scoreboard.floatScore - 10);
}

if (object_index == obj_player && (healthPercent <= 0)){
    // display game over
    global.gameOver = true;
    instance_destroy();
}

show_debug_message("Collision detected with " + string(other.object_index));