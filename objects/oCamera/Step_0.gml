if(instance_exists(follow)){
	xto = follow.x;
	yto = follow.y;
	if((follow).object_index == oPlayerDeath){
		x = xto;
		y = yto;
	}
}
x += (xto - x) / 8;
y += (yto - y) / 8;
x = clamp(x, viewHalfW, room_width  - viewHalfW);
y = clamp(y, viewHalfH, room_height - viewHalfH);

//Shake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);
shakeRemain = max(0, shakeRemain - ((1 / shakeLength) * shakeMagnitude));
camera_set_view_pos(cam, x - viewHalfW, y - viewHalfH);

//Parallax
if(room != rMenu && room != rEnding && room != rNeo){
	if(layer_exists("Background1")){layer_x("Background1", x / 5);}
	if(layer_exists("Background2")){layer_x("Background2", x / 4);}
	if(layer_exists("Background3")){layer_x("Background3", x / 3);}
	if(layer_exists("Background4")){layer_x("Background4", x / 2);}
}if(room = rNeo){
	if(layer_exists("Background1")){layer_x("Background1", y / 5);}
	if(layer_exists("Background2")){layer_x("Background2", y / 4);}
	if(layer_exists("Background3")){layer_x("Background3", y / 3);}
	if(layer_exists("Background4")){layer_x("Background4", y / 2);}
}