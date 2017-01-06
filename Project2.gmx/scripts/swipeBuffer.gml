 //scale = 0.6;
 left = false; right = true;
 moving = false; sitLength = 20; sitTime = sitLength; 
 randomSet = false; ghostLength = 3; ghostTime = ghostLength; 
 mvSpeed = 30;
 special = true;
 count = 0; counted = false; maxCount = 4;
 startX = x; startY = y;
 initDist = 150;
 instance_create(objTarget.x+initDist, y, objTar);
 x = myTarget.x - initDist; y = myTarget.y
 buffered = true;
