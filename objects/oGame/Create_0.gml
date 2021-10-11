///@desc Game Start
randomize();
display_set_gui_size(RES_W, RES_H);
audio_group_load(OST);
audio_group_load(SFX);

//Globals Variable
global.debug = false;
global.gamePaused = false;
global.hasweapon = false;

//Score
global.kills = 0;
global.killsHisRoom = 0;
global.coins = 0;
global.coinsHisRoom = 0;
global.redCoins = 0;
global.redCoinsHisRoom = 0;
killTextScale = 1;
coinTextScale = 1;
redCoinTextScale = 1;

//Option
ini_open(OPTION);
global.gameOST = ini_read_real("Audio", "OST", 0.5);
global.gameSFX = ini_read_real("Audio", "SFX", 0.5);
global.gameUp = ini_read_string("Key", "Up", ord("W"));
global.gameLeft = ini_read_string("Key", "Left", ord("A"));
global.gameDown = ini_read_string("Key", "Down", ord("S"));
global.gameRight = ini_read_string("Key", "Right", ord("D"));
global.Achievement = array_create(6);
for(var _i = 0; _i <= 5; _i++){
	global.Achievement[_i] = ini_read_string("Achievement", string(_i), false);
}
ini_close();