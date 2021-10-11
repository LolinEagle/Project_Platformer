if(!done){
	//Horizontal collision
	if(place_meeting(x + hspd, y, oWall)){
		while(!place_meeting(x + sign(hspd), y, oWall)){x = x + sign(hspd);}
		hspd = 0;
	}
	x = x + hspd;

	//Vertical collision
	if(place_meeting(x, y + vspd, oWall)){
		if(vspd > 0){
			done = true;
			image_index = 1;
			alarm[0] = 60;
		}
		while(!place_meeting(x, y + sign(vspd), oWall)){y = y + sign(vspd);}
		vspd = 0;
	}
	y = y + vspd;
	
	//Start Animation
	if(y > room_height + 128){
		done = true;
		alarm[0] = 60;
	}
	
	//Fall
	vspd = vspd + grv;
}