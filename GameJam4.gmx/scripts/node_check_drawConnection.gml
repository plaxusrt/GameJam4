///node_checkConnection(ownID,otherID)
/*
** Check whether the target node has already connected to your own node and is currently drawing a path to it
**
** Returns - True if matching id is found and is currently drawing
*/
var n1 = argument0, n2 = argument1;

for (var i = 0; i < n2.node_i; i++;) {
    if n1 == n2.node_id[i] and n2.node_draw[i] {
        return true;
    }
}
return false;
