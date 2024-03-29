/// @description 
if (!window_has_focus()) exit;

// Mouse
mouseXPrev = RES_W * 0.5;
mouseYPrev = RES_H * 0.5;

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

mouseXDelta = mouseX - mouseXPrev;
mouseYDelta = mouseY - mouseYPrev;

window_mouse_set(mouseXPrev, mouseYPrev);

// Input
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));

inputX = right - left;
inputY = down - up;

jump = keyboard_check_pressed(vk_space);

// Grounded
groundedPrev = grounded;