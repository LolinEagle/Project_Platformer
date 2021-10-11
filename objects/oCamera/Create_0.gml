cam = view_camera[0];
follow = oPlayer;

//Center of camera
viewHalfW = camera_get_view_width (cam) * 0.5;
viewHalfH = camera_get_view_height(cam) * 0.5;
xto = xstart;
yto = ystart;

//Shake
shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;