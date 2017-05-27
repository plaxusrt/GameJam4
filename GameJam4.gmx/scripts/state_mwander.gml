if wx = -1 {
    wx = random(room_width*5)-room_width*2.5;
    wy = random(room_height*5)-room_height*2.5;
    wz = random(room_width*2.5)-room_width*1.25;
}
if point_distance_3d(x,y,z,wx,wy,wz) < 256 {
    wx = -1;
}
dir = point_direction(x,y,wx,wy);
var dist=point_distance(x,y,wx,wy);
zdir = point_direction(0,z,dist,wz);

spd = power((1-abs(angle_difference(dir,vdir)/180))*(1-abs(angle_difference(zdir,vzdir)/180)),3)*maxspd;

scr_shipMovement();
