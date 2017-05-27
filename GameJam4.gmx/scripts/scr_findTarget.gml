///scr_findTarget(curTar)
//Put in the current target for comparison
var inst, tar = argument0;
for (var i = 0; i < instance_number(o_shipParent); i++) {
    inst = instance_find(o_shipParent,i);
    if inst.team != team and (tar == noone or point_distance(x,y,inst.x,inst.y) < point_distance(x,y,tar.x,tar.y)) {
        tar = inst.id;
    }
}
if instance_exists(target) and point_distance(x,y,tar.x,tar.y) < viewRange return tar else return noone;
