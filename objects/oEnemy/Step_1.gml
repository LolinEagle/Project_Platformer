///@desc Death
if(!global.gamePaused){
	if(hp <= 0){
		//oGunEnemy Destroy
		with(mygun){instance_destroy();}
	
		//Score
		if(instance_exists(oPlayer)){
			global.kills++;
			global.killsHisRoom++;
			with(oGame){killTextScale = 2;}
		}
	
		//Death
		instance_change(spriteDeath, true);
		with(other){
			direction = other.hitfrom
			hspd = lengthdir_x(4, direction);
			vspd = lengthdir_y(4, direction) - 4;
			
			//Scale
			image_xscale = sign(hspd);
			if(sign(hspd) != 0){image_xscale = sign(hspd);}
		}
	}
}