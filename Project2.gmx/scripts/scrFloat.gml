//argument0 = mvSwitch;
//argument1 = mvTime;
//argument2 = defaultSpeed;
//argument3 = mcSpeed;

if mvSwitch == 1 and mvTime > 0
{
 vspeed = 0 - mvSpeed; mvTime--;
 if mvSpeed < defaultSpeed
  mvSpeed += 0.01;
}

if mvSwitch == 0 and mvTime > 0
{
 vspeed = mvSpeed; mvTime--;
 if mvSpeed < defaultSpeed
  mvSpeed += 0.01;
}
 
if mvTime <= 0
{
 if mvSpeed > 0
  mvSpeed -= 0.01;
  
 if mvSwitch == 0 and mvSpeed <= 0//DOWNWARD
 {
   mvSwitch = 1
 }
 
 else if mvSwitch == 1 and mvSpeed <= 0//UPWARD
 {
   mvSwitch = 0
 }

if mvSpeed == 0   
 mvTime = mvTimeMax;
}