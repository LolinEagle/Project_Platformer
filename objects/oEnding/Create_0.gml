i = 0;
spd = 0.5;
letters = 0;//Current Letters
currentline = 0;//Current Line
text = "";
gunsprite = layer_sprite_get_id("BackgroundsTilesMenu", "gGun");
if(global.kills > 0){
	//Normal Ending
	endtext[0] = "Ending";
	endtext[1] = string(global.coins) + " / 210 Coins";
	endtext[2] = string(global.redCoins) + " / 24 Red Coins";
	endtext[3] = string(global.kills) + " / 45 Kills";
	endtext[4] = "The End";
}else{
	//Pacific Ending
	layer_sprite_destroy(gunsprite);
	endtext[0] = "Pacific Ending";
	endtext[1] = string(global.coins) + " / 210 Coins";
	endtext[2] = string(global.redCoins) + " / 24 Red Coins";
	endtext[3] = "You didn't Kill";
	endtext[4] = "The End";
}
lenght = string_length(endtext[currentline]);

//Achievement
ini_open(OPTION);
global.Achievement[0] = ini_write_string("Achievement", "0", true);
if(global.kills == 45){
	global.Achievement[1] = ini_write_string("Achievement", "1", true);
}
if(global.redCoins == 24){
	global.Achievement[2] = ini_write_string("Achievement", "2", true);
}
if(global.coins == 210){
	global.Achievement[3] = ini_write_string("Achievement", "3", true);
}
if(global.kills == 0){
	global.Achievement[4] = ini_write_string("Achievement", "4", true);
}
if(global.coins == 0 && global.redCoins == 0){
	global.Achievement[5] = ini_write_string("Achievement", "5", true);
}
ini_close();