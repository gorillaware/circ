switch shot 
{
 case 1:
  instance_activate_object(visBlack);
  instance_activate_object(objGlide);
  shotLengthNext = room_speed*0.5;
  startLoop(noEngles, 100);
  audio_sound_gain(noEngles, 1.5, 0);
 break;
 case 2:
  instance_activate_object(objReach);
  shotLengthNext = room_speed*2;
 break;
 case 3:
  instance_activate_object(objHold);
  shotLengthNext = room_speed*4;
 break;
 case 4:
  instance_activate_object(objBlue);
  instance_activate_object(objRush);
  instance_activate_object(objDive);
  startSound(snDive, 99);
  shotLengthNext = room_speed*3;
 break;
 case 5:
  instance_activate_object(objBlue);
  instance_activate_object(objRoll);
  instance_activate_object(objRush);
  shotLengthNext = room_speed*3;
 break;
 case 6:
  instance_activate_object(objLanding);
  instance_activate_object(objAtmo);
  instance_activate_object(objGround0);
  startSound(THUD, 69);
  shotLengthNext = room_speed*2;
 break;
 case 7:
  instance_activate_object(objAtmo);
  instance_activate_object(objLanded);
  instance_activate_object(objGround0);
  shotLengthNext = room_speed*3.5;
 break;
 case 8:  
  instance_activate_object(objAtmo);
  instance_activate_object(objReptile);
  instance_activate_object(objLanded);
  instance_activate_object(objGround0);
  shotLengthNext = room_speed*1.7;
 break;
 case 9:
  instance_activate_object(objAtmo);
  instance_activate_object(objShook);
  shotLengthNext = room_speed*2;
  startSound(TREX, 7);
 break;
 case 10:
  instance_activate_object(objAtmo);
  instance_activate_object(objReptile);
  instance_activate_object(objGround0);
  shotLengthNext = room_speed*4;
 break;
 case 11:
  instance_activate_object(objAtmo);
  instance_activate_object(objBranched);
  shotLengthNext = room_speed*2;
 break;
 case 12:
  instance_activate_object(objBlue);
  instance_activate_object(objRepCut00);
  instance_activate_object(objRepCut01);
  instance_activate_object(objPcut0);
  shotLengthNext = room_speed*2;
 break;
 case 13:
  instance_activate_object(objBlue); 
  instance_activate_object(objPcut1);
  instance_activate_object(objRepCut1);
  shotLengthNext = room_speed*2;
 break;
 case 14:
  instance_activate_object(objBlue);
  instance_activate_object(objRepCut2);
  shotLengthNext = room_speed*4;
 break;
 case 15:
  instance_activate_object(objBlue);
   instance_activate_object(objRepCut3);
   instance_activate_object(objPcut3);
   shotLengthNext = room_speed*4;
  break;
  case 16:
   instance_activate_object(objAtmo);
   instance_activate_object(objVisEnd);
   shotLengthNext = room_speed*4;
  break;
 }

 if shotTime > 0
  shotTime--;
 else
 {
  if shot < shotCount
  {
   played = false;
   instance_deactivate_all(true);
   shot++; shotTime = shotLengthNext;
  }
  if shot == shotCount
  {
   played = false;
   instance_deactivate_all(true);
   shot = 1; shotTime = shotLengthNext;
  }
  
 }
