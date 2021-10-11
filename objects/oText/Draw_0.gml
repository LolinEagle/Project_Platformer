var halfw = w / 2;
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_sprite(sMarker, 0, x, y);
draw_roundrect_ext(
	x - halfw - border, y - h - (border * 2),
	x + halfw + border, y,
	15, 15, false
);

//Text
scDrawSetText(c_white, fCalibriLight24, fa_center, fa_top);
draw_text(x, y - h - border, textCurrent);