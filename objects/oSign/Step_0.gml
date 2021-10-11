if(!global.gamePaused && instance_exists(oPlayer)){
	if(
		keyboard_check(vk_up)
		|| keyboard_check(global.gameUp)
		|| abs(min(gamepad_axis_value(0, gp_axislv), 0))
	){
		if(
			point_in_circle(oPlayer.x, oPlayer.y, x, y, 64)
			&& !instance_exists(oText)
		){
			with(instance_create_layer(x, y - 64, layer, oText)){
				text = other.text;
				length = string_length(text);
			}
		}
	}	
}