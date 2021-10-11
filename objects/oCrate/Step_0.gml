if(!global.gamePaused){
	if(hp <= 0){
		instance_destroy();
		instance_destroy(mywall);
	}
	if(instance_exists(mywall)){
		with(mywall){
			//Check for collision
			if(place_meeting(x, y + vspd, oWall)){
				while(!place_meeting(x, y + sign(vspd), oWall)){
					y = y + sign(vspd);
				}
				vspd = 0;
			}
			
			//Fall
			y = y + vspd;
			vspd = vspd + grv;
		}
		
		//Change position
		x = mywall.x;
		y = mywall.y;
	}
}