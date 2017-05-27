can_fire-=1;
if mouse_check_button(mb_left){

    if can_fire<0{
    can_fire=fire_rate;
    
    var inst=instance_create(x,y,o_player_bullet);
    inst.dir=dir;
    inst.zdir=zdir;
    inst.z=z;
    
    
    
    var q=lengthdir_x(1,zdir-(fire_bloom*.5)+random(fire_bloom));
    inst.vx=lengthdir_x(q,dir-(fire_bloom*.5)+random(fire_bloom));
    inst.vy=lengthdir_y(q,dir-(fire_bloom*.5)+random(fire_bloom));
    inst.vz=lengthdir_y(1,zdir-(fire_bloom*.5)+random(fire_bloom));
    
    }
    
    
    }
