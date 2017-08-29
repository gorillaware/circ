//go back to a neutral stance after diveBlitz
if hangTimeB <= 0
{
 diving = false;
 blitz = false;
 thunderStruck = false;

 x = objCloud.x;
 y = objCloud.y;

 if instance_exists(objCloud)
 {
  with(objCloud)
   instance_destroy();
 }
 
 image_alpha=1;
 special = false;
 blitzBuffered = false;
}
