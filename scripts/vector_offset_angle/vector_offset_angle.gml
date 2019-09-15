/// @desc Offsets a vector with Euler angles
/// @arg vec[]
/// @arg rot[]
/// @arg dist

// Args
var _vec = argument[0];
var _rot = argument[1];
var _dist = argument[2];

// Dew it
var _vecTemp = [];

_vecTemp[X] = lengthdir_x(_dist, _rot[Z]) * sin(_rot[X]);
_vecTemp[Y] = lengthdir_y(_dist, _rot[Z]) * sin(_rot[X]);
_vecTemp[Z] = lengthdir_y(_dist, _rot[X]);

// Return
return _vecTemp;