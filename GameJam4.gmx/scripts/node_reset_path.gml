///node_reset_path(nodeID)
var n = argument0, i=0;;
repeat(n.node_i) {
    n.node_ind[i] = node_getNodeIND(n, n.node_id[i]);
    with(n.node_id[i]) {
        var j=0;
        repeat(node_i) {
            node_ind[j] = node_getNodeIND(id, node_id[j]);
            j++;
        }
    }
    i++;
}
