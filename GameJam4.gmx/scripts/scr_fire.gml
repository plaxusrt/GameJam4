    if can_fire<0 and energy>1{
    can_fire=fire_rate;
    energy--;
    
    var inst=instance_create(x,y,o_bullet);
    inst.dir=vdir;
    inst.zdir=vzdir;
    inst.z=z;
    inst.team = team;
    
    var q=lengthdir_x(1,vzdir-(fire_bloom*.5)+random(fire_bloom));
    inst.vx=lengthdir_x(q,vdir-(fire_bloom*.5)+random(fire_bloom));
    inst.vy=lengthdir_y(q,vdir-(fire_bloom*.5)+random(fire_bloom));
    inst.vz=lengthdir_y(1,vzdir-(fire_bloom*.5)+random(fire_bloom));
    
    }
