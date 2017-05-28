///d3d_model_to_vertex_buffer(vertex buffer,model,x,y,z,rotx,roty,rotz,scale)


//arguments0 = buffer_id
//arguments1 = model_id
//arguments2 = x
//arguments3 = y
//arguments4 = z
//arguments5 = x vector
//arguments6 = y vector
//arguments7 = z vector
//arguments8 = uniform scale factor


// declaring throw aways
var buff,file, trans_x, trans_y, trans_z, num_lines, file, version, read_line, i, _x, _y, _z, _uvx, _uvy, _xv, _yv, _zv,my_matrix,scale;
rotation_xyz_array[4]=0;


//fetching arguments
my_buff=argument0;
trans_x=argument2;
trans_y=argument3;
trans_z=argument4;
rot_x=argument5;
rot_y=argument6;
rot_z=argument7;
scale=argument8;


//access the model file
file=file_text_open_read(argument1);


//model update number- worthless honestly.
version = file_text_read_real(file);
if file_text_eoln(file) {file_text_readln(file)}


//how many vertex batches we need to recover from the file
num_lines = file_text_read_real(file);
if file_text_eoln(file) {file_text_readln(file)}



// each line has a header- we know what we can expect to gather per line based on what header we receive
// then we procced to loop through options whether gathering data or terminating our use of the model
i=0;
while i<num_lines-1
        {
                
                read_line=file_text_read_real(file);
                
                
                switch (read_line)
                {
                
        
                case 1: file_text_readln(file); file_text_close(file); exit; break;
                case 0: file_text_readln(file); i+=1; break;
                
                // lines 63-96 actually pull the data from the model and add it to the vertex buffer
                case 9: 
                
                 _x=file_text_read_real(file);
                 _y=file_text_read_real(file);
                 _z=file_text_read_real(file);
                 _nx=file_text_read_real(file);
                 _ny=file_text_read_real(file);
                 _nz=file_text_read_real(file);
                 _uvx=file_text_read_real(file);
                 _uvy=file_text_read_real(file);
                 _col=file_text_read_real(file);
                 _alph=file_text_read_real(file);
                 
                 //create and apply the matrix 
                 my_matrix=matrix_build(trans_x,trans_y,trans_z,rot_x,rot_y,rot_z,scale,scale,scale);
                 matrix_set(matrix_world, my_matrix);
                 
                 //fetch a single vertex after matrix transformations
                 rotation_xyz_array=d3d_transform_vertex(_x, _y, _z);
                 
                 //add the pulled data to the buffer with retrieved information
                vertex_position_3d(my_buff, rotation_xyz_array[0], rotation_xyz_array[1], rotation_xyz_array[2]);
                vertex_normal(my_buff,_nx, _ny,_nz);
                vertex_texcoord(my_buff, _uvx, _uvy);
                vertex_colour(my_buff,_col,_alph);
                
                 
                 
                 file_text_readln(file);
               
                 break;
                 
                // just because....
                default: show_debug_message("model format incorrect") break;
                
                 i+=1;

                 break;
                }
                                
        }       

file_text_close(file);

