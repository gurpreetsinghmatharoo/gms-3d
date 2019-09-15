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

_vecTemp[X] = _vec[X] + (dcos(_rot[Z]) * dcos(_rot[X])) * _dist;
_vecTemp[Y] = _vec[Y] + (dsin(_rot[Z]) * dcos(_rot[X])) * _dist;
_vecTemp[Z] = _vec[Z] + (dsin(_rot[X])) * _dist;

// Return
return _vecTemp;