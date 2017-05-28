///shipStats(i)
//Use arrays for different guns
switch(argument0) {
    case 0: //Mothership
        spd=0.04;
        maxspd=spd;
        spdTurn=0.06;
        maxspdTurn=spdTurn;
        energyconsume=1;
        energy=0;
        maxenergy=energy;
        hp=100;
        maxhp=hp;
        shield=50;
        maxshield=shield;
        range = 1024;
        vel=20; //Bullet velocity
    break;
    
    case 1: //Fighter1 (Secondary is giant laser)
        spd=0.3;
        maxspd=spd;
        spdTurn=2;
        maxspdTurn=spdTurn;
        energy=10;
        maxenergy=energy;
        hp=10;
        maxhp=hp;
        shield=5;
        maxshield=shield;
        weap_sel = 0;
        //Bullet
        energyconsume[0]=1;
        range[0] = 1024;
        vel[0]=20;
        dmg[0]=1;
        can_fire=0;
        fire_rate[0]=5;
        fire_bloom[0]=4;
        fire_bloom_max[0]=4;
        xscale[0]=1;
        yscale[0]=1;
        amount[0]=1; //amount of bullets per shot
        die[0]=true; //Does the bullet die after an enemy hit?
        xOffset[0]=0;
        
        //Giant laser
        energyconsume[1]=0.3;
        range[1] = 1;
        vel[1]=1;
        dmg[1]=0.1;
        fire_rate[1]=0;
        fire_bloom[1]=3;
        fire_bloom_max[1]=5;
        xscale[1]=768/4;
        yscale[1]=1;
        amount[1]=1;
        die[1]=false;
        xOffset[1]=384;
    break;
    
    case 2: //Fighter2 (Secondary is shotgun)
        spd=0.35;
        maxspd=spd;
        spdTurn=1.75;
        maxspdTurn=spdTurn;
        energy=9;
        maxenergy=energy;
        hp=11;
        maxhp=hp;
        shield=6;
        maxshield=shield;
        weap_sel = 0;
        //Bullet
        range[0] = 1024;
        vel[0]=18;
        dmg[0]=1;
        can_fire=0;
        fire_rate[0]=6;
        fire_bloom[0]=3;
        fire_bloom_max[0]=5;
        energyconsume[0]=1;
        xscale[0]=1;
        yscale[0]=1;
        amount[0]=1;
        die[0]=true;
        xOffset[0]=0;
        
        energyconsume[1]=5;
        range[1] = 768;
        vel[1]=12;
        dmg[1]=0.3;
        fire_rate[1]=20;
        fire_bloom[1]=5;
        fire_bloom_max[1]=20;
        xscale[1]=0.5;
        yscale[1]=1;
        amount[1]=10;
        die[1]=true;
        xOffset[1]=0;
    break;
    
    case 3: //Bomber (Secondary is bombs)
        spd=0.2;
        maxspd=spd;
        spdTurn=1;
        maxspdTurn=spdTurn;
        energy=15;
        maxenergy=energy;
        hp=14;
        maxhp=hp;
        shield=8;
        maxshield=shield;
        weap_sel = 0;
        //Bullet
        energyconsume[0]=1.2;
        range[0] = 1024;
        vel[0]=22;
        dmg[0]=1.5;
        can_fire=0;
        fire_rate[0]=5;
        fire_bloom[0]=5;
        fire_bloom_max[0]=8;
        xscale[0]=1;
        yscale[0]=1;
        amount[0]=1;
        die[0]=true;
        xOffset[0]=0;
        
        //Bomb
        energyconsume[1]=3;
        range[1] = 768;
        vel[1]=6;
        dmg[1]=3;
        fire_rate[1]=10;
        fire_bloom[1]=5;
        fire_bloom_max[1]=10;
        xscale[1]=2;
        yscale[1]=4;
        amount[1]=1;
        die[1]=true;
        xOffset[1]=0;
    break;
    
    case 4: //Missle ship (Secondary is missles)
        spd=0.35;
        maxspd=spd;
        spdTurn=1;
        maxspdTurn=spdTurn;
        energy=25;
        maxenergy=energy;
        hp=13;
        maxhp=hp;
        shield=6;
        maxshield=shield;
        weap_sel = 0;
        
        //Bullet
        energyconsume[0]=1.5;
        range[0] = 1024;
        vel[0]=22;
        dmg[0]=0.8;
        can_fire=0;
        fire_rate[0]=3;
        fire_bloom[0]=6;
        fire_bloom_max[0]=8;
        xscale[0]=1;
        yscale[0]=1;
        amount[0]=1;
        die[0]=true;
        xOffset[0]=0;
        
        //Missles
        energyconsume[1]=2;
        range[1] = 1024;
        vel[1]=16;
        dmg[1]=1.1;
        fire_rate[1]=3;
        fire_bloom[1]=5;
        fire_bloom_max[1]=7;
        xscale[1]=2;
        yscale[1]=1;
        amount[1]=2;
        die[1]=true;
        xOffset[1]=0;
    break;
}
