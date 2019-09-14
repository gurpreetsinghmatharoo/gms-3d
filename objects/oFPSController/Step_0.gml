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


#endregion