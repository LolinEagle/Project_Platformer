vspd = 0;
grv = 0.2;

//Collision
mywall = instance_create_layer(x, y, layer, oWall);
with(mywall){
	vspd = 0;
	grv = 0.2;
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
}