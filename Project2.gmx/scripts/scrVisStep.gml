switch shot 
{
 case 1:
  instance_activate_object(objGlide);
 break;
 case 2:
  instance_activate_object(objReach);
 break;
 case 3:
  instance_activate_object(objHold);
 break;
 case 4:
  instance_activate_object(objBlue);
  instance_activate_object(objRush);
  instance_activate_object(objDive);
 break;
 case 5:
  instance_activate_object(objBlue);
  instance_activate_object(objRoll);
  instance_activate_object(objRush);
 break;
 case 6:
  instance_activate_object(objLanding);
  instance_activate_object(objAtmo);
  instance_activate_object(objGround0);
 break;
 case 7:
  instance_activate_object(objAtmo);
  instance_activate_object(objLanded);
  instance_activate_object(objGround0);
 break;
 case 8:  
  instance_activate_object(objAtmo);
  instance_activate_object(objReptile);
  instance_activate_object(objLanded);
  instance_activate_object(objGround0);
 break;
 case 9:
  instance_activate_object(objAtmo);
  instance_activate_object(objReptile);
  instance_activate_object(objGround0);
 break;
 case 10:
  instance_activate_object(objAtmo);
  instance_activate_object(objBranched);
 break;
 case 11:
  instance_activate_object(objBlue);
  instance_activate_object(objRepCut00);
  instance_activate_object(objRepCut01);
  instance_activate_object(objPcut0);
 break;
 case 12:
  instance_activate_object(objBlue); 
  instance_activate_object(objPcut1);
  instance_activate_object(objRepCut1);
 break;
 case 13:
  instance_activate_object(objBlue);
  instance_activate_object(objRepCut2);
 break;
 case 14:
  instance_activate_object(objBlue);
   instance_activate_object(objRepCut3);
   instance_activate_object(objPcut3);
  break;
  case 15:
   instance_activate_object(objAtmo);
   instance_activate_object(objVisEnd);
  break;
 }

 if shotTime > 0
  shotTime--;
 else
 {
  if shot < shotCount
  {
   instance_deactivate_all(true);
   shot++; shotTime = shotLength;
  }
  if shot == shotCount
  {
   instance_deactivate_all(true);
   shot = 0; shotTime = shotLength;
  }
 }
