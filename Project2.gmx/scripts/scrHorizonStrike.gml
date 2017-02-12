//view_enabled = true;

if shadeTime > 0
 shadeTime--;
else
 drawManager.shader = 8;

if instance_exists (object86)
 object86.zoom_factor = 0.75;

//start stationary
if moving == false
{
 if sitTime >= 0
  sitTime--;
}
 //remove click hotspots
if instance_exists(objSpot)
{
 with (objSpot)
  instance_destroy();
}

//transitioning
if distance_to_point(objTar.x, objTar.y) > 1 and sitTime <= 0
{
 moving = true;
 if ghostTime > 0
  ghostTime -= 1;
  
 if left 
 {  
  if randomSet == false
   {thisRandom = irandom_range(0, 2); 
    storedRandom = thisRandom; randomSet = true; }
  
  sprite_index = swipeL[thisRandom]; 
  image_xscale = scale; image_yscale = scale;

//spawn ghosts (left)  
  if ghostTime <= 0
  { 
   instance_create(x, y, ghostL[storedRandom]);
   (ghostL[storedRandom]).image_xscale = scale;
   (ghostL[storedRandom]).image_yscale = scale;
   ghostTime = ghostLength;
  }
 }
 if right 
 {
   if randomSet == false
   {thisRandom = irandom_range(0, 2); 
    storedRandom = thisRandom; randomSet = true; }
  sprite_index = swipeR[thisRandom]; 
  image_xscale = scale; image_yscale = scale;

  //spawn ghosts (right)  
    if ghostTime <= 0
  { 
   instance_create(x, y, ghostR[storedRandom]);
   (ghostR[storedRandom]).image_xscale = scale;
   (ghostR[storedRandom]).image_yscale = scale;
   ghostTime = ghostLength;
  }
 }
 
 move_towards_point(objTar.x, objTar.y, mvSpeed);
}
//reached target, stopped
else if (distance_to_point(objTar.x, objTar.y) <= 1 and moving == true)
{
 speed = 0;
 randomSet = false;
 sitTime = sitLength;

 if right
  {objTar.x = myTarget.x-150; right = not right; left = true;}
 else if left
  { objTar.x = myTarget.x+150; left = not left; right = true;} 
 
 moving = not moving; 
}
