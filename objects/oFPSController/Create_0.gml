/// @description 
// Rotation
rot[X] = -30;
rot[Y] = 0;
rot[Z] = 0;

// Position
z = depth;

// Mouse
sensX = 0.2;
sensY = 0.2

mouseX = device_mouse_x(0);
mouseY = device_mouse_y(0);

// Collision shape
col = ColShape(x, y, z, 32);

#region Movement
force = [0, 0, 0];

// Movement
moveIncr = 0.2;
moveMax = 2;

// Gravity
gravIncr = 0.1;
gravMax = 10;
#endregion