 //for horizon strike
 view_enabled = true;
 
 left = false; right = true;
 moving = false; sitLength = 45; sitTime = sitLength; 
 randomSet = false; ghostLength = 3; ghostTime = ghostLength; 
 mvSpeed = 30;
 special = true;
 count = 0; counted = false; maxCount = 4;
 startX = x; startY = y;
 initDist = 150;
 instance_create(myTarget.x+initDist, y, objTar);
 x = myTarget.x - initDist; y = myTarget.y
 drawManager.shader = 2;
 shadeTime = 40;
 buffered = true;
 
