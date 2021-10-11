global.redCoins++;
global.redCoinsHisRoom++;
with(oGame){redCoinTextScale = 2;}
audio_sound_pitch(snCoins, 0.9);
audio_play_sound(snCoins, 1, false);
instance_destroy();