///@desc Menu
scDrawSetText(c_black, menuFont, fa_right, fa_top);

//Version
var xx = RES_W - 8;
var yy = 8;
draw_text(xx - 2, yy, "1.1.0.0");
draw_text(xx + 2, yy, "1.1.0.0");
draw_text(xx, yy - 2, "1.1.0.0");
draw_text(xx, yy + 2, "1.1.0.0");
draw_set_color(c_white);
draw_text(xx, yy, "1.1.0.0");

//Menu
for(var i = 0; i < menuItems; i++){
	var txt = menu[i];
	if(menuCursor == i){
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}else{
		var col = c_gray;
	}
	xx = menuX;
	yy = menuY - (menuItemHeight * (i * 2.5));
	draw_set_color(c_black);
	draw_text(xx - 2, yy, txt);
	draw_text(xx + 2, yy, txt);
	draw_text(xx, yy - 2, txt);
	draw_text(xx, yy + 2, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt);
}