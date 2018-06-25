 instance_create(0, 0, bg);
 shot = 1;
 shotCount = 2;
 shotLengthNext = 99;
 shotTime = shotLengthNext;
 
 tCount = 2;
 nextTimer = 0.402*room_speed;
 seatTimer = 2*room_speed;
 timer = nextTimer;
 moveTimer = room_speed*2;
 t=0;
 
 if audio_is_playing(noEngles)
  audio_stop_sound(noEngles);
 
 instance_create(0, 0, doorFrame);
 instance_create(0, 0, leftDoor);
 instance_create(0, 0, rightDoor);
 instance_create(room_width/2, room_height/2, trSeat);
 instance_create(room_width/2, room_height/2, trBag);
 instance_create(0, 0, objCox0);
 instance_create(0, 0, objCox1);