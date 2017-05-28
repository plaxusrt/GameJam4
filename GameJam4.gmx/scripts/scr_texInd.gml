///scr_texInd(i,team)
//Indexes to a texture, based on ship type and team
var t = argument1;
switch(argument0) {
    case 0:
        return asset_get_index("tex_" + string(t) + "_fighter1");
    break;
    
    case 1:
        return asset_get_index("tex_" + string(t) + "_fighter2");
    break;
    
    case 2:
        return asset_get_index("tex_" + string(t) + "_bomber");
    break;
    
    case 3:
        return asset_get_index("tex_" + string(t) + "_missleship");
    break;
}
