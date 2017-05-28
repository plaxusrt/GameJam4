if can_fire<0 and energy>energyconsume[weap_sel]{
    can_fire=fire_rate[weap_sel];
    energy-=energyconsume[weap_sel];
    repeat(amount[weap_sel]) {
        var inst=instance_create(x,y,o_bullet);
        inst.dir=vdir;
        inst.zdir=vzdir;
        inst.z=z;
        inst.team = team;
        inst.vel = vel[weap_sel];
        inst.dmg = dmg[weap_sel];
        inst.alarm[0] = range[weap_sel]/vel[weap_sel];
        inst.xscale=xscale[weap_sel];
        inst.yscale=yscale[weap_sel];
        
        var q=lengthdir_x(1,vzdir-(fire_bloom[weap_sel]*.5)+random(fire_bloom[weap_sel]));
        inst.vx= lengthdir_x(q,vdir-(fire_bloom[weap_sel]*.5)+random(fire_bloom[weap_sel]));
        inst.vy= lengthdir_y(q,vdir-(fire_bloom[weap_sel]*.5)+random(fire_bloom[weap_sel]));
        inst.vz= lengthdir_y(1,vzdir-(fire_bloom[weap_sel]*.5)+random(fire_bloom[weap_sel]));
        
        var q=lengthdir_x(1,vzdir),
        dx=lengthdir_x(q,vdir),
        dy=lengthdir_y(q,vdir),
        dz=lengthdir_y(1,vzdir);
        
        inst.x+=dx*xOffset[weap_sel];
        inst.y+=dy*xOffset[weap_sel];
        inst.z+=dz*xOffset[weap_sel];
    }
//audio_stop_sound(snd_fire1);
/*var snd = audio_play_sound_at(snd_fire1,x,y,z,25,75,1,false,0.5); //For some reason, it's loud no matter how low the fall_ values are
audio_sound_gain(snd,0.01,0);
audio_sound_pitch(snd,random(0.2)+.9);*/
}
