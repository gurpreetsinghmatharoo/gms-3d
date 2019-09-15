/// @description 
// Move weapon
with (weapon) {
	// Set position
	var _dist = 32;
	var _rot = other.rot;
	
	_rot[Z] += 30;
	_rot[X] += 45;
	
	var _vec = vector_offset_angle([other.x, other.y, other.z], _rot, _dist);
	x = _vec[X];
	y = _vec[Y];
	z = _vec[Z];
	
	// Face me
	rot[Z] = point_direction(x, y, other.x, other.y);
}