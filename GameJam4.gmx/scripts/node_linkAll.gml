for(var i=0; i < instance_number(o_node); i++) {
    with(instance_find(o_node,i)) {
        for(var j=0; j < instance_number(o_node); j++) {
            //Kind of a weird setup, but we don't want the line to collide with the other node or have any overlapping paths
            inst = instance_find(o_node,j);
            dir = point_direction(x,y,inst.x,inst.y);
            dis = distance_to_object(inst);
            if dis <= 192 and inst.id != id {
                //Still in distance, so add to node.
                node_id[node_i] = inst.id;
                node_draw[node_i] = false;
                if ((!collision_line(x,y,x+lengthdir_x(dis,dir),y+lengthdir_y(dis,dir),o_node,true,true) and !collision_line(x,y,x+lengthdir_x(dis,dir),y+lengthdir_y(dis,dir),o_tmp_connect,true,true)) or dis <= 48) and !node_check_drawConnection(id,inst) {
                    node_draw[node_i] = true;
                    node_dis[node_i] = point_distance(x,y,inst.x,inst.y) / sprite_get_width(s_path);
                    node_dir[node_i] = point_direction(x,y,inst.x,inst.y);
                    node_ind[node_i] = node_getNodeIND(id, node_id[node_i]);
                    with(instance_create(x,y,o_tmp_connect)) {
                        image_xscale = other.node_dis[other.node_i] - 0.5;
                        image_angle = other.node_dir[other.node_i];
                    }
                }
                node_i++;
            }
        }
        if node_id[0] == noone {
            var _x = x;
            x+=10000;
            inst = instance_nearest(_x,y,o_node);
            x-=10000;
            node_id[0] = inst.id;
            node_draw[0] = false;
            if !node_check_drawConnection(id,inst) {
            node_draw[0] = true;
            node_dis[0] = point_distance(x,y,inst.x,inst.y) / sprite_get_width(s_path);
            node_dir[0] = point_direction(x,y,inst.x,inst.y);
            node_ind[0] = node_getNodeIND(id, node_id[0]);
            node_i=1;
            with(instance_create(x,y,o_tmp_connect)) {
                image_xscale = other.node_dis[0] - 0.5;
                image_angle = other.node_dir[0];
            }
            }
        }
    }
}

//Clean up
with(o_tmp_connect) instance_destroy();
