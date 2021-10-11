///@desc Draw Option
scDrawSetText(c_white, fRoboto24, fa_center, fa_middle);

//Rectangle
var _x1 = 224;
var _y1 = 32;
draw_rectangle(_x1, _y1, RES_W - _x1, RES_H - _y1, false);
draw_set_color(c_black);
draw_rectangle(_x1 + 3, _y1 + 3, RES_W - _x1 - 3, RES_H - _y1 - 3, false);
draw_set_color(c_white);

//Volume
draw_text(xstart - cx, y - cy - 32, "Sound");
draw_text(xstart - cx + 368, y - cy, string(percentage) + "%");
draw_rectangle(
	xstart - cx - 320, y - cy - 8, xstart - cx + 320, y - cy + 8, false
);
draw_set_color(c_black);
draw_rectangle(
	xstart - cx - 318, y - cy - 6, xstart - cx + 318, y - cy + 6, false
);
draw_set_halign(fa_left);
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

//Pause
scDrawSetText(c_white, fRoboto24, fa_center, fa_middle);
draw_text(RES_W_HALF, RES_H_HALF + 288, "Pressed Enter to Return");