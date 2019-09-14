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

/// Check for environment collisions
// Floor
