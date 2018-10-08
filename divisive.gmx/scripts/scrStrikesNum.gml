//once contacting attack target
if distance_to_point(myTarget.x, myTarget.y) < 1 and counted = false
{
 inflictDamage();
 instance_create(myTarget.x, myTarget.y, objSwipe);
 objSwipe.image_xscale = myTarget.image_xscale; 
 objSwipe.image_yscale = myTarget.image_yscale;

 o_shader_start.pos = 0.4; //lighting tweak pt. 1(hard numbered spark)
 
 count++; counted = true;
}
 
if o_shader_start.pos > 0    //lighting tweak pt.2 (hard numbered fade)
 o_shader_start.pos -= 0.02; 

if moving == false and counted == true
 counted = not counted;

//sequence complete  
if speed == 0 and count == maxCount and sitTime == 1
{ 
 special = false; buffered = false; 
 if instance_exists(objTar)
 {
  with (objTar)
   instance_destroy();
 }
 
 if instance_exists(object86)
  {
   //view_enabled = false;
   object86.zoom_factor = 1;
   //view_object[0] = 0;
   view_xview[0] = 0;
   view_yview[0] = 0;
  } 
 obj_tester.ranNum = 0; 
}