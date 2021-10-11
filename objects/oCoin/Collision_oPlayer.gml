global.coins++;
global.coinsHisRoom++;
with(oGame){coinTextScale = 2;}
audio_sound_pitch(snCoins, 1);
audio_play_sound(snCoins, 1, false);
instance_destroy();