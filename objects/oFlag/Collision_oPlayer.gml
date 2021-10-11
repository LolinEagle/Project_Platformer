if(!checkpointTaken){
	//New Start Point
	global.checkpointX = x;
	global.checkpointY = y;
	
	//Score Confirmat
	global.killsHisRoom = 0;
	global.coinsHisRoom = 0;
	global.redCoinsHisRoom = 0;
	audio_play_sound(snFlag, 2, false);
	
	#region Crate
	global.numCrate = instance_number(oCrate);
	
	for(var i = 0; i < global.numCrate; i++;){
		var _id = instance_find(oCrate, i);
		global.copyCrateX[i] = _id.x;
		global.copyCrateY[i] = _id.y;
	}#endregion

	#region Gun Pickup
	global.numGunPickup = instance_number(oGunPickup);
	
	for(var i = 0; i < global.numGunPickup; i++;){
		var _id = instance_find(oGunPickup, i);
		global.copyGunPickupX[i] = _id.x;
		global.copyGunPickupY[i] = _id.y;
	}#endregion
	
	#region Coins
	global.numCoins = instance_number(oCoin);
	
	for(var i = 0; i < global.numCoins; i++;){
		var _id = instance_find(oCoin, i);
		global.copyCoinsX[i] = _id.x;
		global.copyCoinsY[i] = _id.y;
	}#endregion
	
	#region Red Coins
	global.numRedCoins = instance_number(oRedCoin);
	
	for(var i = 0; i < global.numRedCoins; i++;){
		var _id = instance_find(oRedCoin, i);
		global.copyRedCoinsX[i] = _id.x;
		global.copyRedCoinsY[i] = _id.y;
	}#endregion
	
	#region Enemy
	global.numEnemy = instance_number(oEnemy);
	
	for(var i = 0; i < global.numEnemy; i++;){
		var _id = instance_find(oEnemy, i);
		global.copyEnemyX[i] = _id.x;
		global.copyEnemyY[i] = _id.y - 1;
		
		//Variable
		global.copyEnemyHp[i] = _id.hp
		global.copyEnemyafraidOfHeights[i] = _id.afraidOfHeights;
		global.copyEnemyhasweapon[i] = _id.hasweapon;
		global.big[i] = _id.big;
	}#endregion
	
	//Checkpoint is Taken
	checkpointTaken = true;
	global.checkpoint = true;
}