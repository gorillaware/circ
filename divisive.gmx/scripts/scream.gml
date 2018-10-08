   if (!audio_is_playing(sc1) and !audio_is_playing(sc2) and !audio_is_playing(sc3)
    and !audio_is_playing(sc4) and !audio_is_playing(sc5) and !audio_is_playing(sc6))
   {
    audio_play_sound(choose(sc1, sc2, sc3, sc4, sc5, sc6), 2, false);
   }