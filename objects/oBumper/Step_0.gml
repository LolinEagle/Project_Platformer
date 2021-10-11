if(!global.gamePaused){
	with(oPlayer){
		if(place_meeting(x, y, oBumper)){
			bumper = true;

			//Jump
			if(canJump > 0 && keyJump){
				vspd = -28;
				canJump = 0;
			}
		}else{
			bumper = false;
		}
	}
}