    if can_fire<0 and energy>1{
    can_fire=fire_rate;
    energy--;
    
    var inst=instance_create(x,y,o_bullet);
    inst.dir=dir;
    inst.zdir=zdir;
    inst.z=z;
    inst.team = team;
    
    var q=lengthdir_x(1,zdir-(fire_bloom*.5)+random(fire_bloom));
    inst.vx=lengthdir_x(q,dir-(fire_bloom*.5)+random(fire_bloom));
    inst.vy=lengthdir_y(q,dir-(fire_bloom*.5)+random(fire_bloom));
    inst.vz=lengthdir_y(1,zdir-(fire_bloom*.5)+random(fire_bloom));
    
    }
