instance_create(x, y, obj_tester);

obj_tester.horiz = argument0;
obj_tester.fwd = argument1;

obj_tester.image_xscale = 0.6;
obj_tester.image_yscale = 0.6;

if !instance_exists(o_shader_start)
{
 //instance_create(0, 0, o_gui);
 instance_create(20, 0, o_shader_end);
 instance_create(10, 0, o_shader_start);
}