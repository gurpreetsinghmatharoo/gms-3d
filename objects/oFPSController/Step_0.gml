/// @description 
#region Mouse rotation
rot[Z] += mouseXDelta * sensX;
rot[X] += mouseYDelta * sensY;

rot[X] = clamp(rot[X], -80, 80);
#endregion

#region Gravity
if (force[Z] < gravMax) force[Z] += gravIncr;

// Jump
if (jump) {
	force[Z] = -jumpSpeed;
}
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
grounded = colEnv(col, force);

// Apply
x += force[X];
y += force[Y];
z += force[Z];

// Update collisions
ColUpdate();
#endregion

#region Offset rotation

// Lerpin
for (var i=0; i<3; i++) {
	rot2[i] = lerp(rot2[i], rot2Target[i], 0.2);
	rot2Target[i] = lerp(rot2Target[i], 0, 0.1);
}

// Bob while moving
if (abs(force[X]) || abs(force[Y])) {
	var _spd = 2;
	var _sinX = abs(dsin(current_time / _spd));
	_sinX *= _sinX;
	var _sinZ = dsin(current_time / _spd);
	
	rot2Target[X] = _sinX * 10;
	rot2Target[Z] = _sinZ * 10;
}

// Land
if (grounded && !groundedPrev) {
	rot2Target[X] = 3;
}
#endregion