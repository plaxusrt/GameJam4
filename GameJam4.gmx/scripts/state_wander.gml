//if !instance_exists(target) {
    if wx = -1 {
        wx = random(room_width);
        wy = random(room_height);
        wz = random(room_width)-room_width*.5;
    }
    if point_distance_3d(x,y,z,wx,wy,wz) < 128 {
        wx = -1;
    }
    dir = point_direction(x,y,wx,wy);
    var dist=point_distance(x,y,wx,wy);
    zdir = point_direction(0,z,dist,wz);
    
    spd = sqr((1-abs(angle_difference(dir,vdir)/180))*(1-abs(angle_difference(zdir,vzdir)/180)))*maxspd;
    
    scr_shipMovement();
    
//} else state = state_attackTarget();
