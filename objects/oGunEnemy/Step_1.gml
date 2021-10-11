if(!global.gamePaused){
	//Position
	x = owner.x;
	y = owner.y + 9;

	//Size
	image_xscale = abs(owner.image_xscale);
	image_yscale = abs(owner.image_yscale);

	//Target
	if(instance_exists(oPlayer)){
		//On the Left
		if(oPlayer.x < x){image_yscale = image_yscale;}
	
		//If Near
		if(point_distance(x, y, oPlayer.x, oPlayer.y) < range){
			image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
		
			//if angle = left
			if(image_angle > 90 && image_angle < 270){
				image_yscale = -image_yscale;
			}else{
				image_yscale = image_yscale;
			}
		
			//Shoot
			if(
				!collision_line(
					x, y, oPlayer.x, oPlayer.y, oWall, false, false
				)
			){
				countdown--;
				if(countdown <= 0){
					countdown = countdownrate;
				
					//Audio
					audio_sound_pitch(snShoot, choose(0.9, 1.0, 1.1))
					audio_play_sound(snShoot, 1, false);
				
					//Create Bullet
					with(
						instance_create_layer(
							x, y, "layerBullets", oBulletEnemy
						)
					){
						spd = 12;
						direction = other.image_angle + random_range(-2, 2);
						image_angle = direction;
					}
				}
			}
		}else{
			image_angle = 0;
			image_xscale = owner.image_xscale;
		}
	}
}