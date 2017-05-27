dir = dir % 360;

vdir += clamp(angle_difference(dir,vdir),spd*.3-maxspd,maxspd-spd*.3);
vzdir += clamp(angle_difference(zdir,vzdir),spd*.3-maxspd,maxspd-spd*.3);

zdir = clamp(zdir,-89,89);

//Player facing
var q=lengthdir_x(1,zdir);
xVect=lengthdir_x(q,dir);
yVect=lengthdir_y(q,dir);
zVect=lengthdir_y(1,zdir);

//Ship movement direction
q=lengthdir_x(1,vzdir);
sxVect=lengthdir_x(q,vdir);
syVect=lengthdir_y(q,vdir);
szVect=lengthdir_y(1,vzdir);

//Ship movement velocity
sxVel+=sxVect*spd;
syVel+=syVect*spd;
szVel+=szVect*spd;

x+=sxVel;
y+=syVel;
z+=szVel;

//Dampeners
sxVel*=0.95;
syVel*=0.95;
szVel*=0.95;
