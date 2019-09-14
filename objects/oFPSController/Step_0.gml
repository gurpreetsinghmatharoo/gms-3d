/// @description 
#region Mouse rotation
rotZ += mouseXDelta * sensX;
rotX += mouseYDelta * sensY;

rotX = clamp(rotX, -80, 80);
#endregion

#region Gravity
if (force[Z] < gravMax) force[Z] += gravIncr;
#endregion

#region Movement
// X
var _xTarget = inputX * moveMax;
var _xDiff = _xTarget - force[X];

if (abs(_xDiff) > moveIncr)	
	force[X] += sign(_xDiff) * moveIncr;
else
	force[X] = _xTarget;

// Y
var _yTarget = inputY * moveMax;
var _yDiff = _yTarget - force[Y];

if (abs(_yDiff) > moveIncr)	
	force[Y] += sign(_yDiff) * moveIncr;
else
	force[Y] = _yTarget;

// Collisions

// Apply
x += force[X];
y += force[Y];
z += force[Z];
#endregion