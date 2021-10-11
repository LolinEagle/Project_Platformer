guiWidth  = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 48;

//Menu
menuX = guiWidth + 192;
menuY = guiHeight - 128;
menuTargetX = guiWidth - guiMargin;
menuSpeed = 25;
menuFont = fRoboto24;
menuItemHeight = font_get_size(menuFont);
menuCommitted = -1;
menuControl = true;
menu[3] = "New Game";
menu[2] = "Continue";
menu[1] = "Option";
menu[0] = "Quit";
menuItems = array_length(menu);
menuCursor = 2;