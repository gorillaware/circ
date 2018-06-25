 instance_activate_object(drawManager);
 instance_activate_object(objTunnel);
 
 switch t
 {
  case 0:
   if audio_is_playing(deepDefeat)
    audio_stop_sound(deepDefeat);
   startSound(TTC, 0);
   nextTimer = 12.116*room_speed;
  break;
  case 1: 
   seatTimer--;
   if instance_exists(doorFrame)
    {doorFrame.open = true; doorFrame.close = false;}
   nextTimer = 1.352*room_speed;
  break;
  case 2:
   if instance_exists(doorFrame)
   {
    doorFrame.open = not doorFrame.open;
    doorFrame.close = true;
   }
   nextTimer = 0.402*room_speed;
  break;
 }
 
 if seatTimer <= 0
 {
  instance_deactivate_all(true); shot = 2;
  moveTimer--;
 }

 //cycles through timers, reset the flag for startSound script  
 if timer > 0
  timer--;
 else
 {
  if t <= tCount
  {
   played = false;
   instance_deactivate_all(true);
   t++; timer = nextTimer;
  }
  if t > tCount
  {
   played = false;
   instance_deactivate_all(true);
   game_end(); //on last timer
  } 
 }
 instance_activate_object(drawManager);
 switch shot
 {
  case 2:
   instance_activate_object(trGround);
   instance_activate_object(trFront);
   instance_activate_object(trFrontRails);
   instance_activate_object(trSeat);
   instance_activate_object(trBag);
  break;
  case 1:
   instance_activate_object(doorFrame);
   instance_activate_object(leftDoor);
   instance_activate_object(rightDoor);
   instance_deactivate_object(objTunnel);
  break;
 }
 
 if moveTimer <= 0 and trSeat.x > 0
  startSound(snSlide, 21);