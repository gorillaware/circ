//relies on "setupShot"
if shotTime > 0 and global.paused == 0
  shotTime--;
 else
 {
  if shot <= shotCount
  {
   played = false;
   instance_deactivate_all(true);
   shot++; shotTime = shotLengthNext;
  }
  if shot > shotCount
  {
   played = false;
   instance_deactivate_all(true);
   shot = 1; shotTime = shotLengthNext;
  } 
 }