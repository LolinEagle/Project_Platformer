///@desc Draw Score
scDrawSetText(c_black, fCalibriLight24, fa_right, fa_top);

#region	Kills
if(room != rMenu && instance_exists(oPlayer) && global.kills > 0){
	killTextScale = max(killTextScale * 0.95, 1);
	draw_text_transformed(
		RES_W - 8, 74,
		string(global.kills) + " Kills", killTextScale, killTextScale, 0
	);
	draw_set_color(c_white);
	draw_text_transformed(
		RES_W - 10, 72,
		string(global.kills) + " Kills", killTextScale, killTextScale, 0
	);
}#endregion

#region	Coins
if(room != rMenu && instance_exists(oPlayer) && global.coins > 0){
	coinTextScale = max(coinTextScale * 0.95, 1);
	draw_set_color(c_black);
	draw_text_transformed(
		RES_W - 08, 42,
		string(global.coins) + " Coins", coinTextScale, coinTextScale, 0
	);
	draw_set_color(c_white);
	draw_text_transformed(
		RES_W - 10, 40,
		string(global.coins) + " Coins", coinTextScale, coinTextScale, 0
	);
}#endregion

#region	Red Coins
if(room != rMenu && instance_exists(oPlayer) && global.redCoins > 0){
	redCoinTextScale = max(redCoinTextScale * 0.95, 1);
	draw_set_color(c_black);
	draw_text_transformed(
		RES_W - 08,
		10,
		string(global.redCoins) + " Coins", redCoinTextScale, redCoinTextScale,
		0
	);
	draw_set_color(c_red);
	draw_text_transformed(
		RES_W - 10,
		8,
		string(global.redCoins) + " Coins", redCoinTextScale, redCoinTextScale,
		0
	);
}#endregion