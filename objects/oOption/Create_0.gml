///@desc Variable
scCameraGetView();
selected = false;
percentage = round(global.gameOST * 100);

//Limit
limitLeft  = x - 320;
limitRight = x + 320;
x = limitLeft + ((limitRight - limitLeft) * global.gameOST);

//Create Option Instance
instance_create_layer(cx + RES_W_HALF, cy + 450, layer, oKeyUp);
instance_create_layer(cx + RES_W_HALF, cy + 563, layer, oKeyDown);
instance_create_layer(cx + RES_W_HALF - 128, cy + 563, layer, oKeyLeft);
instance_create_layer(cx + RES_W_HALF + 128, cy + 563, layer, oKeyRight);
instance_create_layer(cx + RES_W_HALF, cy + 338, layer, oOptionSFX);