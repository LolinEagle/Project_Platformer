w = display_get_gui_width();
h = display_get_gui_height();
hHalf = h / 2;
percent = 0;
target = room;
enum TRANS_MODE{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
	CHECKPOINT
}
mode = TRANS_MODE.INTRO;