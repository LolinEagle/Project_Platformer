draw_self();

if(!global.gamePaused){
	if(
		instance_exists(oPlayer)
		&& point_in_circle(oPlayer.x, oPlayer.y, x, y, 64)
		&& !instance_exists(oText)
	){
		draw_sprite(sMarker, 0, x, (y - 32) + (sin(get_timer() / 100000) * 6));
	}
}