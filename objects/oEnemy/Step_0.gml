if(!global.gamePaused){
	vspd = vspd + grv;

	//Don't walk of edges
	if(
		grounded && afraidOfHeights && !place_meeting(x + hspd, y + 1, oWall)
	){
		hspd = -hspd;
	}

	//oGunEnemy
	if(hasweapon && !done){
		mygun = instance_create_layer(x, y, "layerGun", oGunEnemy);
		with(mygun){owner = other.id;}
		done = true;
	}if(!hasweapon && !done){
		mygun = noone;
		done = true;
	}

	#region Collision
	//Horizontal collision
	if(place_meeting(x + hspd, y, oWall)){
		while(!place_meeting(x + sign(hspd), y, oWall)){
			x = x + sign(hspd);
		}
		hspd = -hspd;
	}
	x = x + hspd;

	//Vertical collision
	if(place_meeting(x, y + vspd, oWall)){
		while(!place_meeting(x, y + sign(vspd), oWall)){
			y = y + sign(vspd);
		}
		vspd = 0;
	}
	y = y + vspd;#endregion

	#region Animation
	if(!place_meeting(x, y + 1, oWall)){
		grounded = false;
		sprite_index = spriteAir;
		image_speed = 0;
		if(sign(vspd) > 0){image_index = 1;}
		else{image_index = 0;}
	}else{
		grounded = true;
		image_speed = 1;
		if(hspd == 0){sprite_index = sprite;}
		else{sprite_index = spriteRun;}
	}
	if(hspd != 0){image_xscale = sign(hspd);}#endregion
}