///scr_findTarget()
var ds, tar;
ds = ds_priority_create();
ds_priority_add(ds,noone,100000);
with(o_shipParent) {
    if team != other.team ds_priority_add(ds,id,point_distance(x,y,other.x,other.y));
}
tar = ds_priority_find_min(ds);
ds_priority_destroy(ds);

if tar != noone and point_distance(x,y,tar.x,tar.y) < viewRange {
    return tar
} else return noone;
