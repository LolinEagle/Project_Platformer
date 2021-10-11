///@desc Destroy Option Instance
instance_destroy(oKeyUp);
instance_destroy(oKeyDown);
instance_destroy(oKeyLeft);
instance_destroy(oKeyRight);
instance_destroy(oOptionSFX);

//Ini Save
ini_open(OPTION);
ini_write_real("Audio", "OST", global.gameOST);
ini_write_real("Audio", "SFX", global.gameSFX);
ini_write_string("Key", "Up", global.gameUp);
ini_write_string("Key", "Left", global.gameLeft);
ini_write_string("Key", "Down", global.gameDown);
ini_write_string("Key", "Right", global.gameRight);
ini_close();