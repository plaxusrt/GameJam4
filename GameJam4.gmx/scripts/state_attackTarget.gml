if instance_exists(target) {
    //Face the enemy
    dir = point_direction(x,y,target.x,target.y);
    var dist=point_distance(x,y,ytarget.x,target.y);
    zdir = point_direction(0,z,dist,target.z);
    
    diff = (1-abs(angle_difference(dir,vdir)/180))*(1-abs(angle_difference(zdir,vzdir)/180));
    if diff > 0.8 {
        scr_fire();
    }
    
    scr_shipMovement();
} else {
    state = state_wander;
}
