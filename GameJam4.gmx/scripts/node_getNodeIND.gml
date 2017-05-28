///node_getNodeIND(ownID,otherID)
//Set the path colour

var n1=argument0, n2=argument1;

//PP
if (n1.team == Player and n2.team == Player) {
    return 1;
}

//EE
if n1.team == Enemy and n2.team == Enemy {
    return 2;
}

//PE
if (n1.team == Player and n2.team == Enemy) or (n1.team == Enemy and n2.team == Enemy) {
    return 0;
}

//NN
if n1.team == -1 and n2.team == -1 {
    return 0;
}

//P-N-E
if (n1.team == Player and n2.team == -1) or (n1.team == Enemy and n2.team == -1) or (n1.team == -1 and n2.team == Player) or (n1.team == -1 and n2.team == Enemy) {
    return 0;
}
