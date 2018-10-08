//shots advance consecutively 
//the timing of each shot is set in the previous shot 
//(or a create event in a seperate object for case 1).
//Every object is deactivated between shots,
//then various objects are reactivated depending on the current shot
switch shot 
{
 //12.04s next
 //run a hotline for people who come in
 //cell phone on day and night
 case 1:
  instance_activate_object(objPhone);
  shotLengthNext = room_speed*15.7;
 break;
  
 case 2:
  //27.74s next
  //typical calls from men wishing to restore
  //give them NORM advice owned by a griffin
  instance_activate_object(objWizard);
  instance_activate_object(objBananna);
  instance_activate_object(objPlate);
  instance_activate_object(objWoodTable);
  instance_activate_object(objRestorationBack);
  shotLengthNext = room_speed*10.2;
 break;
 
 case 3:
  //37.94s next
  //also get calls from residents who do not wish to circumcise
  instance_activate_object(objNo);
  shotLengthNext = room_speed*7.6;
 break;
 
 case 4:
 //45.54s next
 //large number of calls from mothers of forcibly retracted boys
  instance_activate_object(objRetract);
  shotLengthNext = room_speed*14.46;
 break;
 
 case 5:
 //1m next
 //some nurse or physician injured a child by trying to pull the skin back prematurely
 //damaging the belano preputial lamina
  instance_activate_object(objTrap);
  shotLengthNext = room_speed*30;
 break;
 
 case 6:
 //1m30s next
  instance_activate_object(objPrepuce);
  shotLengthNext = room_speed*17;
 break;
 
 case 7:
 //1m47s next
  instance_activate_object(objDisplay);
  shotLengthNext = room_speed*20;
 break;
 
 case 8:
 //2m7s next
  instance_activate_object(objConcern);
  shotLengthNext = room_speed*5;
 break;
 
 case 9:
  instance_activate_object(objLaw);
  if shotTime <= 0
   game_end()   ;
 break;
}

playShot();
