if(!global.gamePaused){
	#region Movement
	if(hascontrol){
		keyLeft = keyboard_check(global.gameLeft);
		keyRight = keyboard_check(global.gameRight);
		keyDown = keyboard_check(global.gameDown);
		keyJump = keyboard_check(vk_space);
	
		#region Gamepad
		if(keyLeft || keyRight || keyJump){controller = false;}
		if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2){
			keyLeft = abs(min(gamepad_axis_value(0, gp_axislh), 0));
			keyRight = max(gamepad_axis_value(0, gp_axislh), 0);
			keyDown = abs(min(gamepad_axis_value(0, gp_axislh)));
			controller = true;
		}if(gamepad_button_check_pressed(0, gp_face1)){
			keyJump = 1;
			controller = true;
		}#endregion
	}else{
		keyLeft = 0
		keyRight = 0
		keyDown = 0
		keyJump = 0
	}
	var move = keyRight - keyLeft;

	//Horizontal
	hspd = (move * walkspd) + gunkickx;
	gunkickx = 0;

	//Vertical
	vspd = (vspd + grv) + gunkicky;
	gunkicky = 0;

	//Jumping
	canJump--;
	if(canJump > 0 && keyJump && bumper = false){
		vspd = -8.5;
		canJump = 0;
	}#endregion

	#region Collision
	//Horizontal collision
	if(place_meeting(x + hspd, y, oWall)){
		while(!place_meeting(x + sign(hspd), y, oWall)){
			x = x + sign(hspd);
		}
		hspd = 0;
	}
	x = x + hspd;

	//Vertical collision oWall
	if(place_meeting(x, y + vspd, oWall)){
		while(!place_meeting(x, y + sign(vspd), oWall)){
			y = y + sign(vspd);
		}
		vspd = 0;
	}

	//Vertical collision oPlatform
	if(
		place_meeting(x, y + vspd, oPlatform)
		&& vspd >= 0
		&& fall = false
		&& keyDown = false
	){
		while(!place_meeting(x, y + sign(vspd), oPlatform)){
			y = y + sign(vspd);
		}
		vspd = 0;
	}
	fall = false;

	//Vertical adjustment
	y = y + vspd;

	//Fall
	if(y > room_height){scKillPlayer();}#endregion

	#region Animation
	//Aim Side
	var aimside = sign(mouse_x - x);
	if(aimside != 0){image_xscale = aimside;}

	//In the air
	if(!place_meeting(x, y + 1, oWall) && !place_meeting(x, y + 1, oPlatform)){
		sprite_index = sPlayerAir;
		if(sign(vspd) > 0){image_index = 1;}
		else{image_index = 0;}
	}else{
		//On the ground
		canJump = 30;
	
		//Landing (Not on oPlatform)
		if(sprite_index == sPlayerAir && !place_meeting(x, y + 1, oPlatform)){
			//Audio
			audio_sound_pitch(snLanding, choose(0.8, 1, 1.2))
			audio_play_sound(snLanding, 0, false);
			
			//Create Dust
			repeat(12){
				with(
					instance_create_layer(
						x, bbox_bottom, "layerBullets", oDust
					)
				){
					vspd = 0;
				}
			}
		}
		image_speed = 1;
	
		//Grounded
		if(hspd == 0){
			sprite_index = sPlayer
		}else{
			sprite_index = sPlayerRun
			if(aimside != sign(hspd)){sprite_index = sPlayerRunBack;}
		}
	}#endregion
}