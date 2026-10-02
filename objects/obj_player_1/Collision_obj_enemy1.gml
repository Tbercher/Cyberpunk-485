if (!is_invulnerable) {
    hp -= 1;
    is_invulnerable = true;
    
    alarm[0] = 60; 
    image_alpha = 0.5;
    
    instance_destroy(other);
    
    if (hp <= 0) {
        room_restart();
    }
}