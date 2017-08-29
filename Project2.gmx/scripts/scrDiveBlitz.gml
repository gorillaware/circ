if !instance_exists(objCloud)
 instance_create(x, y, objCloud);
 
sprite_index=sprNeutral; //<- maybe should've named this something less ambiguous
de_spot();
//fold arms, fade out, ascend
if image_alpha > 0 and diving == false and blitz == false
{
 if !audio_is_playing(swish)
  audio_play_sound(swish, 69, 0);
 y--; 
 image_alpha -= 0.1;
}

//go inside/above cloud
if image_alpha<=0
{
 x = objCloud.x;
 y = objCloud.sprite_height/4;
 hangTimeA--;
 
 if hangTimeA <= 0
 {
  visible = true;
  diving = true;
 }
}
 
if diving == true
{
 vspeed = 30;
 image_alpha = 1; 
 sprite_index = sprRush;
 
 if y >= objCloud.y
 {
  vspeed = 0;
  blitz = true;
  diving = false;
 } 
}

//play 1/2 thunder sounds, smash the earth, lightning strike
//gonna need to use hangtimeB when reassigning the command to the universal special key
if blitz == true
{
 if blitzed == false
 {badTouch(); blitzed = true;}
 hangTimeB--;
 
 thunderTime--;
 if !audio_is_playing(thunder[thunderNum]) and thunderStruck == false
  audio_play_sound(thunder[thunderNum], 5, 0);
 if thunderTime <= 10
  thunderStruck = true;
 vspeed = 0;
 sprite_index = sprDrop;
 
 x = objCloud.x;
 y = objCloud.y;
 objCloud.image_index = 1;
 lightningTime--;
 if lightningTime <= 0
  objCloud.image_index = 0;
}
