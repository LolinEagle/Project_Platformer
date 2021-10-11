///@desc Variable
scCameraGetView();
selected = false;
percentage = round(global.gameSFX * 100);

//Limit
limitLeft  = x - 320;
limitRight = x + 320;
x = limitLeft + ((limitRight - limitLeft) * global.gameSFX);