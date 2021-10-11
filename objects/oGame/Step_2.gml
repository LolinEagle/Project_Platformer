///@desc Pause
var _pause = keyboard_check_pressed(vk_escape) || !window_has_focus();
if(
	_pause
	&& room != room_first
	&& !global.gamePaused
	&& !instance_exists(oPlayerDeath)
){
	global.gamePaused = true;
	with(all){
		image_speed = 0;
		speed = 0;
	}
}