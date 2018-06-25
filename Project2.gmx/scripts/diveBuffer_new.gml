lightningTime = room_speed/8;
hangTimeA = 1*room_speed;
hangTimeB = 2*room_speed;
riseSounded = false;
thunderStruck = false;

thunderNum = 0;
thunder[0] = snThunder0;
thunder[1] = snThunder1;

thunderNum = irandom_range(0, 1);
thunderTime = audio_sound_length(thunder[thunderNum])*room_speed;