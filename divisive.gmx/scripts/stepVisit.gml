//shots advance consecutively 
//the timing of each shot is set in the previous shot 
//(or a create event in a seperate object for case 1).
//Every object is deactivated between shots,
//then various objects are reactivated depending on the current shot
switch shot 
{
 case 1:
  instance_activate_object(objPhone);
 break;
  
 case 2:
  instance_activate_object(objRestore);
 break;
 
 case 3:
  instance_activate_object(objNo);
 break;
 
 case 4:
  instance_activate_object(objRetract);
 break;
 
 case 5:
  instance_activate_object(objTrap);
 break;
 
 case 6:
  instance_activate_object(objPrepuce);
 break;
 
 case 7:
  instance_activate_object(objDisplay);
 break;
 
 case 8:
  instance_activate_object(objConcern);
 break;
 
 case 9:
  instance_activate_object(objLaw);
 break;
}

playShot();
