/// @description 
// Mouse
mouseXPrev = mouseX;
mouseYPrev = mouseY;

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

mouseXDelta = mouseX - mouseXPrev;
mouseYDelta = mouseY - mouseYPrev;

if (abs(mouseXDelta) || abs(mouseYDelta)) {
	log("Mouse Motion: (", mouseXDelta, ", ", mouseYDelta, ")");
}