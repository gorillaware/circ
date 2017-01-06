//counted by egg
if distance_to_object(obj_tester) < 1 and counted = false
{
 shake = 10; instance_create(x, y, objSwipe); 
 objSwipe.image_xscale = 1.4; objSwipe.image_yscale = 1.4;
 count++; counted = true;
}
else
 counted = not counted;
 
if obj_tester.speed == 0 and count == maxCount and obj_tester.sitTime == 1
 obj_tester.special = false;
