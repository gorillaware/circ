scale = 0.3;
if moving == false
{
 if sitTime >= 0
  sitTime--;
}
//transitioning
if distance_to_object(objTar) > 1 and sitTime <= 0
{
 moving = true;
 if ghostTime > 0
  ghostTime -= 1;
  
 if left 
 {  
  if randomSet == false
   {thisRandom = irandom_range(1, 2); 
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
   {thisRandom = irandom_range(0, 1); 
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
else if (distance_to_object(objTar) <= 1 and moving == true)
{
 speed = 0;
 randomSet = false;
 sitTime = sitLength;

 if right
  {objTar.x = objEgg.x-150; right = not right; left = true;}
 else if left
  { objTar.x = objEgg.x+150; left = not left; right = true;} 
  
 moving = not moving; 
}