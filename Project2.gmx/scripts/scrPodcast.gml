//shots advance consecutively 
//the timing of each shot is set in the previous shot (or create event for case 1).
//Every object is deactivated between shots,
//then various objects are reactivated depending on the current shot
switch shot 
{
 case 1:
 //they call circumcision male genital mutilation
  startSound(snMale, 399);
  shotLengthNext = room_speed*4.57;
  instance_activate_object(objCurtain);
  instance_activate_object(objShrug);
 break;
 
 case 2:
 //*laughter*
  shotLengthNext = room_speed*1.02;
  instance_activate_object(objCurtain);
  instance_activate_object(objLaughStart);
  instance_activate_object(objGtable);
 break;
 
 case 3:
 //but wait a minute, isn't it?
  shotLengthNext = room_speed*1.92;
  instance_activate_object(objCurtain);
  instance_activate_object(objGtable);
  instance_activate_object(objTableHost);
  instance_activate_object(objLaughStop);
 break;
 
 case 4:
 //you're cutting a babies dick?
  shotLengthNext = room_speed*1.83;
  instance_activate_object(objObv);
 break;
 
 case 5:
 //you're one of those people, are you?
  shotLengthNext = room_speed*3.39;
  instance_activate_object(objGuest);
 break;
 
 case 6:
 //but no i'm just saying: it is. It's cutting skin
  shotLengthNext = room_speed*3.41;
  instance_activate_object(objPodHost);
 break;
 
 case 7:
 //it's just good grooming
  shotLengthNext = room_speed*1.06;
  instance_activate_object(objIts);
 break;
 
 case 8:
  //there isn't...
  shotLengthNext = room_speed*10;
  instance_activate_object(objIsnt);
 break;
 
 case 9:
  //...a single sexual procedure that comes close to the amount of
  //babies who are circumcised
  //I didn't realize you were one of those people
  shotLengthNext = room_speed*2;
  instance_activate_object(objTheresNot);
  instance_activate_object(objSplit);
 break;
 
/* case 9:
  instance_activate_object(objSideTable);
  instance_activate_object(objLean);
 break;*/
 
 case 10:
 //I think I'm in the minority here
  shotLengthNext = room_speed * 100;
  instance_activate_object(objMinority);
 break;
 
 case 11:
  instance_activate_object(objHerpes);
  instance_activate_object(objBlackBlank);
 break;
}

playShot();
