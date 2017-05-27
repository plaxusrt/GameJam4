///shipStats(i)
//Use arrays for different guns
switch(argument0) {
    case 0: //Mothership
        spd=0.04;
        maxspd=spd;
        spdTurn=0.06;
        maxspdTurn=spdTurn;
        energy=0;
        maxenergy=energy;
        hp=100;
        maxhp=hp;
        shield=50;
        maxshield=shield;
        range = 1024;
        vel=20; //Bullet velocity
    break;
    
    case 1: //Fighter
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
        range = 1024;
        vel=20; //Bullet velocity
    break;
}
