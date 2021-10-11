function scKillPlayer(){
	//Player
	with(oGun){instance_destroy();}
	instance_change(oPlayerDeath, true);

	//Movement
	direction = point_direction(other.x, other.y, x, y);
	hspd = lengthdir_x(6, direction);
	vspd = lengthdir_y(4, direction) - 2;
	if(sign(hspd) != 0){image_xscale = sign(hspd);}
	
	//Global
	global.kills -= global.killsHisRoom;
	global.coins -= global.coinsHisRoom;
	global.redCoins -= global.redCoinsHisRoom;
	global.killsHisRoom = 0;
	global.coinsHisRoom = 0;
	global.redCoinsHisRoom = 0;
}