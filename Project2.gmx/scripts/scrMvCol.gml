/***********************/
stage = argument0;      
horizMax = argument1;   
fwdMax = argument2;     
/***********************/

fwdFree = true;
backFree = true;
leftFree = true;
rightFree = true;

//obstacle checking
 if instance_exists(obstruct)
 {
//-----------------------W------------------------
   for (i = 0; i < instance_number(obstruct); i++)
   {
    obstruction[i] = instance_find(obstruct, i);
    if ((obstruction[i]).horiz == obj_tester.horiz )
    {
     if ((obstruction[i]).fwd == (obj_tester.fwd)+1 )
      obj_tester.fwdFree = false;
    }
   }
//----------------------A---------------------------------   
   for (i = 0; i < instance_number(obstruct); i++)
   {
    obstruction[i] = instance_find(obstruct, i);
    if ((obstruction[i]).horiz == (obj_tester.horiz)-1 )
    {
     if ((obstruction[i]).fwd == (obj_tester.fwd))
      obj_tester.leftFree = false;
    }
   }
//----------------------S------------------------------   
   for (i = 0; i < instance_number(obstruct); i++)
   {
    obstruction[i] = instance_find(obstruct, i);
    if ((obstruction[i]).horiz == obj_tester.horiz )
    {
     if ((obstruction[i]).fwd == (obj_tester.fwd)-1 )
      obj_tester.backFree = false;
    }
   }
//----------------------D----------------------------------   
   for (i = 0; i < instance_number(obstruct); i++)
   {
    obstruction[i] = instance_find(obstruct, i);
    if ((obstruction[i]).horiz == (obj_tester.horiz)+1 )
    {
     if ((obstruction[i]).fwd == (obj_tester.fwd) )
      obj_tester.rightFree = false;
    }
   }
 }
 //movement
 if locked == false and special == false{
 if (keyboard_check_pressed(ord('W')) == true and fwdMax > fwd and fwdFree == true)
  {  
    fwd++;
    obj_tester.scale *= 0.85;
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    image_xscale = obj_tester.scale;
    image_yscale = obj_tester.scale;
    depth+=2;
    
  }
 
  if (keyboard_check_pressed(ord('S')) == true and fwd > 0 and backFree == true)
  {
    fwd--;
    obj_tester.scale /= 0.85
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    image_xscale = obj_tester.scale;
    image_yscale = obj_tester.scale;
    depth-=2;
    
  }
 
   if (keyboard_check_pressed(ord('A')) == true and horiz > 0 and leftFree == true)
  {
    sprite_index = sprLeft;
    horiz--;
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    left = true;
    right = false;
  }
 
   if (keyboard_check_pressed(ord('D')) == true and horiz < horizMax and rightFree == true)
  {
    sprite_index = sprRight;
    horiz++;
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    right = true;
    left = false;
    
  }
 }
