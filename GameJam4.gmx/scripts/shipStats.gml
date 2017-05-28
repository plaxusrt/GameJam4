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
    
    case 1: //Fighter1
        spd=0.3;
        maxspd=spd;
        spdTurn=2;
        maxspdTurn=spdTurn;
        energy=10;
        maxenergy=energy;
        energyconsume=1;
        hp=10;
        maxhp=hp;
        shield=5;
        maxshield=shield;
        //Bullet
        range = 1024;
        vel=20;
        dmg=1;
        can_fire=0;
        fire_rate=5;
        fire_bloom=4;
        fire_bloom_max=4;
    break;
    
    case 2: //Fighter2
        spd=0.35;
        maxspd=spd;
        spdTurn=1.75;
        maxspdTurn=spdTurn;
        energy=9;
        maxenergy=energy;
        energyconsume=1;
        hp=11;
        maxhp=hp;
        shield=6;
        maxshield=shield;
        //Bullet
        range = 1024;
        vel=18;
        dmg=1;
        can_fire=0;
        fire_rate=6;
        fire_bloom=3;
        fire_bloom_max=5;
    break;
    
    case 3: //Bomber
        spd=0.2;
        maxspd=spd;
        spdTurn=1;
        maxspdTurn=spdTurn;
        energy=15;
        maxenergy=energy;
        energyconsume=1.2;
        hp=14;
        maxhp=hp;
        shield=8;
        maxshield=shield;
        //Bullet
        range = 1024;
        vel=22;
        dmg=1.5;
        can_fire=0;
        fire_rate=5;
        fire_bloom=5;
        fire_bloom_max=8;
    break;
    
    case 4: //Missle ship
        spd=0.25;
        maxspd=spd;
        spdTurn=1;
        maxspdTurn=spdTurn;
        energy=25;
        maxenergy=energy;
        energyconsume=1.5;
        hp=13;
        maxhp=hp;
        shield=6;
        maxshield=shield;
        //Bullet
        range = 1024;
        vel=22;
        dmg=0.8;
        can_fire=0;
        fire_rate=3;
        fire_bloom=6;
        fire_bloom_max=8;
    break;
}
