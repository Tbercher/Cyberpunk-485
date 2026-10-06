
// only allow the instance with a smaller id to process the collision. prevents double processing
if (object_index != obj_player){
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

x -= distanceX * impactFactor;
y -= distanceY * impactFactor;

other.crashVelocityX -= -distanceX * 2 * impactFactor;
other.crashVelocityY -= -distanceY * 2 * impactFactor;
healthPercent -= 20

if (healthPercent <= 0){
    // display game over
    global.gameOver = true;
    instance_destroy();
}