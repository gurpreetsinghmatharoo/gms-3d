/// @arg pos
/// @arg rot
/// @arg scale

// Args
var _pos = argument[0];
var _rot = argument[1];
var _scale = argument[2];

// Matrix
var _mat = matrix_build(_pos[X], _pos[Y], _pos[Z], _rot[X], _rot[Y], _rot[Z], _scale[X], _scale[Y], _scale[Z]);

matrix_set(matrix_world, _mat);

vertex_submit(vbuff, pr_trianglelist, texture);

matrix_set(matrix_world, matrix_build_identity());