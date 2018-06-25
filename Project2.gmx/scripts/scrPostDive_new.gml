//go back to a neutral stance after diveBlitz
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