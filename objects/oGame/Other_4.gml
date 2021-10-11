///@desc Global Variable & Music
game_set_speed(60, gamespeed_fps);

//Global Variable
global.killsHisRoom = 0;
global.coinsHisRoom = 0;
global.redCoinsHisRoom = 0;

//Music
if(room == rForest){audio_play_sound(snTrack1, 3, true);}
if(room == rHill){audio_play_sound(snTrack2, 3, true);}
if(room == rNeo){audio_play_sound(snTrack3, 3, true);}
if(room == rEnding){audio_play_sound(snTrackEnding, 3, true);}

//Create Objects
if(room == rMenu){
	if(!instance_exists(oMenu)){instance_create_layer(x, y, layer, oMenu);}
	if(!instance_exists(oCamera)){instance_create_layer(x, y, layer, oCamera);}
	if(!instance_exists(oPause)){instance_create_layer(x, y, layer, oPause);}
	if(!instance_exists(oPassage)){
		instance_create_layer(x, y, layer, oPassage);
	}
	if(!instance_exists(oAchievement)){
		instance_create_layer(x, y, layer, oAchievement);
	}
}