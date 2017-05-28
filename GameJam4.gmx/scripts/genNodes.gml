//var _x = random_range(room_width*.1,room_width*.9), _y = random_range(room_height*.1,room_height*.9),dir=0,dis;
var armCount=irandom_range(2,4),
radius = random_range(room_height*.2,room_height*.3),
spinFactor = random_range(.05,0.07),
armRadius=random_range(room_height*.02,room_height*.04),
dir=irandom(359), dis, rot = choose(-1,1),
_x,_y,cx=room_width*.5,cy=room_height*.5,
starCount=irandom_range(10,14);

//Create Arms
repeat(armCount) {
    _x = lengthdir_x(radius,dir);
    _y = lengthdir_y(radius,dir);
    instance_create(cx+_x,cy+_y,o_arm);
    dir+=(360/armCount)*random_range(0.9,1.1);
}

with(o_arm) {
    repeat(starCount/armCount) {
        //var h = 1-sqrt(random(1)); or
        var h = sqr(random(1));
        
        //Get point around the arm
        var dis,dir,_x,_y;
        dir=random(360);
        dis=random(armRadius);
        _x=lengthdir_x(dis,dir);
        _y=lengthdir_y(dis,dir);
        
        //Now move up, away from the centre. according to how much h
        var __x, __y;
        dir = point_direction(cx,cy,x,y);
        dis = (radius*h)*1.5;
        __x = lengthdir_x(dis,dir);
        __y = lengthdir_y(dis,dir);
        instance_create(room_width*.5+_x+__x,room_height*.5+_y+__y,o_node);
    }
}

/*
repeat(starCount) {
    dis = random(radius);
    dir = random(360);
    instance_create(room_width*.5+lengthdir_x(dis,dir),room_height*.5+lengthdir_y(dis,dir),o_node);
}*/

//Give it a spin
with(o_node) {
    dis = point_distance(room_width*.5,room_height*.5,x,y);
    dir = point_direction(x,y,room_width*.5,room_height*.5)+dis*spinFactor;
    x = room_width*.5+lengthdir_x(dis,dir);
    y = room_height*.5+lengthdir_y(dis,dir);
    //After the spin, destroy itself if colliding with one another
    if place_meeting(x,y,o_node) instance_destroy();
}

with(o_arm) instance_destroy();

/* Old generator code
repeat(40) {
    instance_create(_x,_y,o_node);
    while(!place_empty(_x,_y)) {
        dir=random(180)+point_direction(_x,_y,room_width*.5,room_height*.5);
        dis=random(128);
        _x = clamp(_x+lengthdir_x(dis,dir),room_width*.1,room_width*.9);
        _y = clamp(_y+lengthdir_y(dis,dir),room_height*.1,room_height*.9);
    }
}*/

node_linkAll();
