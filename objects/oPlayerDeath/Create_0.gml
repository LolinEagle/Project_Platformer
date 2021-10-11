image_speed = 0;
image_index = 0;
hspd = 3;
vspd = -4;
grv  = 0.3;
done = false;
scScreenShake(6, 30);
audio_play_sound(snDeath, 2, false);
game_set_speed(40, gamespeed_fps);
with(oCamera){follow = other.id;}