///node_get_connection(ownID,otherID)
//Returns the channel that has the matching node id
//Returns -1 if failed
var n1=argument0, n2=argument1;

for(var i = 0; i < n1.node_i; i++) {
    if n1.node_id[i] == n2 {
        return i;
    }
}

return -1;
