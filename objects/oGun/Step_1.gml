if(!global.gamePaused){
	x = oPlayer.x;
	y = oPlayer.y + 12;

	#region Image Angle
	if(oPlayer.controller == false){
		image_angle = point_direction(x, y, mouse_x, mouse_y);
	}else{
		var controllerh = gamepad_axis_value(0, gp_axisrh);
		var controllerv = gamepad_axis_value(0, gp_axisrv);
	
		//Calculated image_angle
		if(abs(controllerh) > 0.2 || (abs(controllerv) > 0.2)){
			controlleRangle = point_direction(0, 0, controllerh, controllerv)
		}
		image_angle = controlleRangle
	}#endregion

	#region Shoot
	recoil = max(0, recoil - 1);
	if(
		(mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb))
		&& rateoffire < 0
	){
		recoil = 4;
		rateoffire = 6;
		scScreenShake(2, 10);
	
		//Audio snShoot
		audio_sound_pitch(snShoot, choose(0.9, 1.0, 1.1));
		audio_play_sound(snShoot, 1, false);
		audio_sound_pitch(snShoot, 1);
	
		//Create Bullet 
		with(instance_create_layer(x, y, "layerBullets", oBullet)){
			spd = 25;
			direction = other.image_angle + random_range(-1, 1);
			image_angle = direction;
		}
		with(oPlayer){
			gunkickx = lengthdir_x(0.5, other.image_angle - 180);
			gunkicky = lengthdir_y(0.3, other.image_angle - 180);
		}
	}
	rateoffire--;#endregion

	//Update variables
	x = x - lengthdir_x(recoil, image_angle);
	y = y - lengthdir_y(recoil, image_angle);
	if(image_angle > 90 && image_angle < 270){image_yscale = -1;}
	else{image_yscale = 1;}
}