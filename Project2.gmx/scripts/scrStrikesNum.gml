if distance_to_point(myTarget.x, myTarget.y) < 1 and counted = false
{
 instance_create(x, y, objSwipe);
 objSwipe.image_xscale = 1.4; objSwipe.image_yscale = 1.4;
 count++; counted = true;
}
else
 counted = not counted;
 
if speed == 0 and count == maxCount and sitTime == 1
 { special = false; buffered = false; }
