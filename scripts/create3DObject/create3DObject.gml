/// @arg x
/// @arg y
/// @arg z
/// @arg sprite

// Args
var _x = argument[0];
var _y = argument[1];
var _z = argument[2];
var _spr = argument[3];

// Create
var _inst = instance_create_layer(_x, _y, "Instances", o3DObject);

with (_inst) {
	z = _z;
}

// End
return _inst;