///scr_findTarget(curTar)
//Put in the current target for comparison
var inst, tar = argument0;
for (var i = 0; i < instance_number(o_shipParent); i++) {
    inst = instance_find(o_shipParent,i);
    if inst.team != team and (tar == noone or point_distance(x,y,inst.x,inst.y) < point_distance(x,y,tar.x,tar.y)) {
        tar = inst.id;
    }
}
if point_distance(x,y,tar.x,tar.y) < 256 return tar else return noone;
