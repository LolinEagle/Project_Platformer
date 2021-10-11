if(!global.gamePaused){
	if(!done){
		//Horizontal collision
		if(place_meeting(x + hspd, y, oWall)){
			while(!place_meeting(x + sign(hspd), y, oWall)){
				x = x + sign(hspd);
			}
			hspd = 0;
		}
		x = x + hspd;

		//Vertical collision
		if(place_meeting(x, y + vspd, oWall)){
			if(vspd > 0){
				done = true;
				image_index = 1;
			}
			while(!place_meeting(x, y + sign(vspd), oWall)){
				y = y + sign(vspd);
			}
			vspd = 0;
		}
		y = y + vspd;
		vspd = vspd + grv;
	}else{
		if(!place_meeting(x, y + vspd, oWall)){done = false;}
	
		//Fade
		if(image_index = 1){image_alpha -= 0.015;}
		if(image_alpha = 0){instance_destroy();}
	}
}