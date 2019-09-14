/// @description 
#region Mouse rotation
rot[Z] += mouseXDelta * sensX;
rot[X] += mouseYDelta * sensY;

rot[X] = clamp(rot[X], -80, 80);
#endregion

#region Gravity
if (force[Z] < gravMax) force[Z] += gravIncr;
#endregion

#region Movement
// X
var _xTarget = 
	inputX * moveMax * dcos(rot[Z]+90)
	+ -inputY * moveMax * dcos(rot[Z]);
	
var _xDiff = _xTarget - force[X];

if (abs(_xDiff) > moveIncr)	
	force[X] += sign(_xDiff) * moveIncr;
else
	force[X] = _xTarget;

// Y
var _yTarget = 
	inputX * moveMax * dsin(rot[Z]+90)
	+ -inputY * moveMax * dsin(rot[Z]);
	
var _yDiff = _yTarget - force[Y];

if (abs(_yDiff) > moveIncr)	
	force[Y] += sign(_yDiff) * moveIncr;
else
	force[Y] = _yTarget;

// Collisions
colEnv(col, force);

// Apply
x += force[X];
y += force[Y];
z += force[Z];

// Update collisions
ColUpdate();
#endregion