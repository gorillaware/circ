//takes soundid and priority/alarm number, doesn't loop
if played == false and !audio_is_playing(argument0)
{ 
 audio_play_sound(argument0, argument1, 0); 
 snLength = audio_sound_length(argument0);
 stepsLeft = snLength*room_speed-5;
}
stepsLeft--;
if stepsLeft <= 0
 played = true;
 
if played == true and audio_is_playing(argument0)
 audio_stop_sound(argument0);
 