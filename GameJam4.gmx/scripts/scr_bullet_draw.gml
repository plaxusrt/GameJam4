d3d_set_lighting(false);
d3d_transform_set_identity();
d3d_transform_add_rotation_y(-zdir);
d3d_transform_add_rotation_z(dir);
d3d_transform_add_translation(x,y,z);
d3d_model_draw(model,0,0,0,tex);
d3d_transform_set_identity();
d3d_set_lighting(true);