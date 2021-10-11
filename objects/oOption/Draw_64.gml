///@desc Draw Option
scDrawSetText(c_white, fRoboto24, fa_center, fa_middle);

//Volume
draw_text(xstart - cx, y - cy - 32, "Music");
draw_text(xstart - cx + 368, y - cy, string(percentage) + "%");
draw_rectangle(
	xstart - cx - 320, y - cy - 8, xstart - cx + 320, y - cy + 8, false
);
draw_set_color(c_black)
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