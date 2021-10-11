///@desc Restart
game_set_speed(60, gamespeed_fps);

//Restart
if(!global.checkpoint){
	scSlideTransition(TRANS_MODE.GOTO, room);
}else{
	scSlideTransition(TRANS_MODE.CHECKPOINT);
	
	//CleanUp
	instance_destroy(oBullet);
	instance_destroy(oBulletEnemy);
	instance_destroy(oHitSpark);
	instance_destroy(oDust);
	
	//Destroy
	instance_destroy(oCrate);
	instance_destroy(oGunPickup);
	instance_destroy(oCoin);
	instance_destroy(oRedCoin);
	instance_destroy(oEnemy);
	instance_destroy(oEnemyBig);
	instance_destroy(oGunEnemy);
	
	#region Player
	with(
		instance_create_layer(
			global.checkpointX, global.checkpointY, layer, oPlayer
		)
	){
		if(global.hasweapon){
			instance_create_layer(oPlayer.x, oPlayer.y, "layerGun", oGun);
		}
		with(oCamera){follow = oPlayer;}
	}#endregion
	
	#region Crate
	for(var i = 0; i < global.numCrate; i++){
		instance_create_layer(
			global.copyCrateX[i], global.copyCrateY[i], "layerCrate", oCrate
		);
	}#endregion 
	
	#region Gun Pickup
	for(var i = 0; i < global.numGunPickup; i++){
		instance_create_layer(
			global.copyGunPickupX[i],
			global.copyGunPickupY[i],
			"layerGun",
			oGunPickup
		);
	}#endregion 
	
	#region Coins
	for(var i = 0; i < global.numCoins; i++){
		instance_create_layer(
			global.copyCoinsX[i],
			global.copyCoinsY[i],
			"layerCoins",
			oCoin
		);
	}#endregion 
	
	#region Red Coins
	for(var i = 0; i < global.numRedCoins; i++){
		instance_create_layer(
			global.copyRedCoinsX[i],
			global.copyRedCoinsY[i],
			"layerRedCoins",
			oRedCoin
		);
	}#endregion 
	
	#region Enemy
	for(var i = 0; i < global.numEnemy; i++){
		if(global.big[i] = false){
			with(
				instance_create_layer(
					global.copyEnemyX[i],
					global.copyEnemyY[i],
					"layerEnemy",
					oEnemy
				)
			){
				hp = global.copyEnemyHp[i];
				afraidOfHeights = global.copyEnemyafraidOfHeights[i];
				hasweapon = global.copyEnemyhasweapon[i];
			}
		}else{
			with(
				instance_create_layer(
					global.copyEnemyX[i],
					global.copyEnemyY[i],
					"layerEnemy",
					oEnemyBig
				)
			){
				hp = global.copyEnemyHp[i];
				afraidOfHeights = global.copyEnemyafraidOfHeights[i];
			}
		}
	}#endregion
	
	//Self Destroy
	instance_destroy();
}