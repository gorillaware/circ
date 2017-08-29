//argument0 = timerQuantity, SHOTCOUNT
//argument1 = timerNumber, SHOT
//argument2 = timerRemainingLength, SHOTTIME
//argument3 = nextTimersLength, SHOTLENGTHNEXT
 if argument2 > 0
  argument2--;
 else
 {
  if argument1 <= argument0
  {
   played = false;
   instance_deactivate_all(true);
   argument1++; argument2 = argument3;
  }
  if argument1 > argument0
  {
   played = false;
   instance_deactivate_all(true);
   argument1 = 1; argument2 = argument3;
  } 
 }
