audio_play_sound(obj_tester.slash[irandom_range(0, 2)], 1, 0);

  (myTarget).hp -= impact;
  (myTarget).hurt = true;
  
  if ((myTarget).hp > 15 and (myTarget).hp < 30)
   dong.sprite_index = sprDongS2;
   
  if ((myTarget).hp > 0 and (myTarget).hp < 15)
   dong.sprite_index = sprDongS3;
   
  else if ((myTarget).hp <= 0)
   {dong.sprite_index = sprDongS4;}
   
with(dong)
{
 struck = true; comboTime = comboTimeMax; combo++;
    
 switch (obj_tester.storedRan)
 {
  case 0:
   break;
  case 1:
   instance_create(x, y, targetBox.slash[0]);
   break;
  case 2:
   instance_create(x, y, targetBox.slash[1]);
   break;
  case 3:
   instance_create(x, y, targetBox.slash[2]);
   break;
  case 4:
   instance_create(x, y, targetBox.slash[3]);
   break;  
 }
}
