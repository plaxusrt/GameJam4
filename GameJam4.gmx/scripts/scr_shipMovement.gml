//I will try to make the ships seem more realistic
//My plan is to make them turn faster if the player has stopped and turn slower if the player is moving fast.
//I will also make the ship show a crosshair, so we know where the ship is exactly aiming at.
dir -= (display_mouse_get_x() - (window_get_x()+window_get_width()*.5))*.12;
zdir += (display_mouse_get_y() - (window_get_y()+window_get_height()*.5))*.12;
display_mouse_set(window_get_x()+window_get_width()*.5,window_get_y()+window_get_height()*.5);

dir = dir % 360;

vdir += clamp(angle_difference(dir,vdir),spd*.5-maxspd,maxspd-spd*.5);
vzdir += clamp(angle_difference(zdir,vzdir),spd*.5-maxspd,maxspd-spd*.5);

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
sxVel*=0.9;
syVel*=0.9;
szVel*=0.9;

spd=clamp(spd+(keyboard_check(ord("W"))-keyboard_check(ord("S")))*.1,0,maxspd);;
