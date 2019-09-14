/// @description 
// Move weapon
with (weapon) {
	// Set position
	var _dist = 32;
	x = lengthdir_x(_dist, -rot[Z]);
	y = lengthdir_y(_dist, -rot[Z]);
	
	// Face me
	rot[Z] = point_direction(x, y, other.x, other.y);
}