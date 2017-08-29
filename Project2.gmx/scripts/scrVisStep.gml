//shots advance consecutively 
//the timing of each shot is set in the previous shot (or create event for case 1).
//Every object is deactivated,
//then various objects are reactivated depending on the current shot
switch shot 
{
 case 1:
  //instance_activate_object(visBlack);
  instance_activate_object(objGlide);
  shotLengthNext = room_speed*0.5;
  startLoop(noEngles, 100);
  //audio_sound_gain(noEngles, 1.5, 0);
 break;
 case 2:
  instance_activate_object(objReach);
  shotLengthNext = room_speed*audio_sound_length(swish)-2;
 break;
 case 3:
  instance_activate_object(objHold);
  shotLengthNext = room_speed*1.5;
  startSound(swish, 12);
 break;
 case 4:
  instance_activate_object(objBlue);
  instance_activate_object(objRush);
  instance_activate_object(objDive);
  startSound(snDive, 99);
  shotLengthNext = room_speed*1.5;
 break;
 case 5:
  instance_activate_object(objBlue);
  instance_activate_object(objRoll);
  instance_activate_object(objRush);
  shotLengthNext = room_speed*1;
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
  shotLengthNext = room_speed*1;
  startSound(suitUp, 70);
 break;
 case 8:  
  //audio_stop_sound(suitUp);
  instance_activate_object(objAtmo);
  instance_activate_object(objReptile);
  instance_activate_object(objLanded);
  instance_activate_object(objGround0);
  shotLengthNext = room_speed*audio_sound_length(TREX)-2;
 break;
 case 9:
  instance_activate_object(objAtmo);
  instance_activate_object(objShook);
  shotLengthNext = room_speed*1.25;
  startSound(TREX, 7);
 break;
 case 10:
  instance_activate_object(objAtmo);
  instance_activate_object(objReptile);
  instance_activate_object(objGround0);
  shotLengthNext = room_speed*2;
  startSound(chomp, 21);
 break;
 case 11:
  instance_activate_object(objAtmo);
  instance_activate_object(objBranched);
  shotLengthNext = room_speed*audio_sound_length(smack0)-2;
 break;
 case 12:
  instance_activate_object(objBlue);
  instance_activate_object(objRepCut00);
  instance_activate_object(objRepCut01);
  instance_activate_object(objPcut0);
  startSound(smack0, 10);
  shotLengthNext = room_speed*audio_sound_length(smack0)-2;
 break;
 case 13:
  instance_activate_object(objBlue); 
  instance_activate_object(objPcut1);
  instance_activate_object(objRepCut1);
  startSound(smack2, 20);
  shotLengthNext = room_speed*audio_sound_length(smack1)-2;
 break;
 case 14:
  instance_activate_object(objBlue);
  instance_activate_object(objRepCut2);
  startSound(smack1, 30);
  shotLengthNext = room_speed*audio_sound_length(smack2)-2;
 break;
 case 15:
  instance_activate_object(objBlue);
   instance_activate_object(objRepCut3);
   instance_activate_object(objPcut3);
   startSound(smack2, 40);
   shotLengthNext = room_speed*10;
  break;
  case 16:
   instance_activate_object(objAtmo);
   instance_activate_object(objVisEnd);
   instance_activate_object(objGround0);
   instance_activate_object(objRepWreck);

   startSound(deepDefeat, 100);
   audio_sound_gain(deepDefeat, 0.8, 0);
  break;
  case 17:
   room_goto(rmTrain);
  break;
 }

if shotTime > 0
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
