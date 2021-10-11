///@desc AutoSave
if(file_exists(SAVEFILE)){file_delete(SAVEFILE);}

//Open
var file = file_text_open_write(SAVEFILE);

//Write
file_text_write_real(file, room);
file_text_write_real(file, global.kills);
file_text_write_real(file, global.coins);
file_text_write_real(file, global.redCoins);
file_text_write_real(file, global.hasweapon);

//Close
file_text_close(file);