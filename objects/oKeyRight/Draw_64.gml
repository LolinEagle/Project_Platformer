scDrawSetText(c_white, fRoboto24, fa_center, fa_middle);
draw_sprite_ext(
	sprite_index,
	image_index,
	x - cx,
	y - cy,
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
);

//Key
switch(global.gameRight){
	case vk_up: draw_text(x - cx, y - cy, "Up"); break;
	case vk_down: draw_text(x - cx, y - cy, "Down"); break;
	case vk_left: draw_text(x - cx, y - cy, "Left"); break;
	case vk_right: draw_text(x - cx, y - cy, "Right"); break;
	default: draw_text(x - cx, y - cy, string(chr(global.gameRight))); break;
}