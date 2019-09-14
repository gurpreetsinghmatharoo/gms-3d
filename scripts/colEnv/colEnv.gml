/// @arg col
/// @arg offset[]

// Args
var _col = argument[0];
var _offset = argument[1];

// Temp col array
var _colTemp = [];
array_copy(_colTemp, 0, _col, 0, 4);

// Offset
_colTemp[X] += _offset[X];
_colTemp[Y] += _offset[Y];
_colTemp[Z] += _offset[Z];

// Vars
var _grounded = false;

/// Check for environment collisions
// Floor
if (_colTemp[Z] + _colTemp[RAD] > FLOOR_Z) {
	_offset[@ Z] = 0;
	_col[@ Z] = FLOOR_Z;
	
	_grounded = true;
}

// Return if grounded
return _grounded;