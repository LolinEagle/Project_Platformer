///@desc Draw Achievement
scDrawSetText(c_black, fRoboto24, fa_center, fa_top);
var xx = 172;
var yy = 24;
draw_text(xx - 2, yy, "Achievement");
draw_text(xx + 2, yy, "Achievement");
draw_text(xx, yy - 2, "Achievement");
draw_text(xx, yy + 2, "Achievement");
draw_set_color(c_white);
draw_text(xx, yy, "Achievement");

//Achievement Bloc
scDrawSetText(c_white, fRoboto18, fa_left, fa_top);
xx = 12;
for(var _i = 0; _i <= achievement; _i++){
	yy = (_i + 1) * 66;
	draw_sprite(sButton, global.Achievement[_i], 8, 8 + yy);
	
	//Text
	draw_set_color(c_black);
	draw_text(xx - 2, yy + 12, textAchievement[_i]);
	draw_text(xx + 2, yy + 12, textAchievement[_i]);
	draw_text(xx, yy - 2 + 12, textAchievement[_i]);
	draw_text(xx, yy + 2 + 12, textAchievement[_i]);
	draw_set_color(c_white);
	draw_text(xx, yy + 12, textAchievement[_i]);
}

//Ending
if(achievement == 5 && global.Achievement[5] == true){
	scDrawSetText(c_black, fRoboto24, fa_center, fa_top);
	var xx = 172;
	var yy = 486;
	draw_text(xx - 2, yy, "Congratulation !");
	draw_text(xx + 2, yy, "Congratulation !");
	draw_text(xx, yy - 2, "Congratulation !");
	draw_text(xx, yy + 2, "Congratulation !");
	draw_set_color(c_white);
	draw_text(xx, yy, "Congratulation !");
}