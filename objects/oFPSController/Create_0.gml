/// @description 
// Rotation
rot[X] = -30;
rot[Y] = 0;
rot[Z] = 0;

// Offset rotation
rot2 = [0, 0, 0];
rot2Target = [0, 0, 0];

// Position
z = depth;

// Mouse
sensX = 0.2;
sensY = 0.2

mouseX = device_mouse_x(0);
mouseY = device_mouse_y(0);

// Collision shape
col = ColShape(x, y, z, 32);

// Vars
grounded = false;
groundedPrev = false;

#region Movement
force = [0, 0, 0];

// Movement
moveIncr = 0.1;
moveMax = 1.7;

// Gravity
gravIncr = 0.1;
gravMax = 10;

jumpSpeed = 1.5;
#endregion

#region Create Weapon
weapon = create3DObject(x, y, z, sGun0);

with (weapon) {
	var _s = 0.4;
	scale = [_s, _s, _s];
}
#endregion