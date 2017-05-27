//if !instance_exists(target) {
    if wx = -1 {
        wx = random(room_width);
        wy = random(room_height);
        wz = random(room_width)-room_width*.5;
    }
    if point_distance_3d(x,y,z,wx,wy,wz) < 64 {
        wx = -1;
    }
    dir = point_direction(x,y,wx,wy);
    var _x = x-wx, _y = y-wy, _z = z-wz;
    zdir = arctan2(_z,sqrt(sqr(_x)+sqr(_y))); //Not working
    
    spd = ((1-abs(angle_difference(dir,vdir)/180))*(1-abs(angle_difference(zdir,vzdir)/180)))*maxspd;
    
    scr_shipMovement();
    
//} else state = state_attackTarget();
