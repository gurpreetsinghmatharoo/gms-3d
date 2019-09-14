/// @description 
// Mouse
mouseXPrev = RES_W * 0.5;
mouseYPrev = RES_H * 0.5;

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

mouseXDelta = mouseX - mouseXPrev;
mouseYDelta = mouseY - mouseYPrev;

window_mouse_set(mouseXPrev, mouseYPrev);

if (abs(mouseXDelta) || abs(mouseYDelta)) {
	log("Mouse Motion: (", mouseXDelta, ", ", mouseYDelta, ")");
}