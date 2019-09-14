/// @description 
// Move weapon
with (weapon) {
	// Set position
	var _dist = 32;
	var _rot = -other.rot[Z] - 20;
	x = other.x + lengthdir_x(_dist, _rot);
	y = other.y + lengthdir_y(_dist, _rot);
	z = other.z + 24;
	
	// Face me
	rot[Z] = point_direction(x, y, other.x, other.y);
}