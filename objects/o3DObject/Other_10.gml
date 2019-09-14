/// @description Create
// Get sprite data
var _w = sprite_get_width(sprite);
var _h = sprite_get_height(sprite);

texture = sprite_get_texture(sprite, 0);

var _uvs = texture_get_uvs(texture);

// Create buffer
vbuff = vertex_create_buffer();

vertex_begin(vbuff, VF_3D) {
	// Tri 0
	vertex_position_3d(vbuff, 0, _w/2, -_h);
	vertex_texcoord(vbuff, _uvs[0], _uvs[1]);
	vertex_color(vbuff, color, alpha);
	
	vertex_position_3d(vbuff, 0, -_w/2, -_h);
	vertex_texcoord(vbuff, _uvs[2], _uvs[1]);
	vertex_color(vbuff, color, alpha);
	
	vertex_position_3d(vbuff, 0, _w/2, 0);
	vertex_texcoord(vbuff, _uvs[0], _uvs[3]);
	vertex_color(vbuff, color, alpha);
	
	// Tri 1
	vertex_position_3d(vbuff, 0, -_w/2, -_h);
	vertex_texcoord(vbuff, _uvs[2], _uvs[1]);
	vertex_color(vbuff, color, alpha);
	
	vertex_position_3d(vbuff, 0, -_w/2, 0);
	vertex_texcoord(vbuff, _uvs[2], _uvs[3]);
	vertex_color(vbuff, color, alpha);
	
	vertex_position_3d(vbuff, 0, _w/2, 0);
	vertex_texcoord(vbuff, _uvs[0], _uvs[3]);
	vertex_color(vbuff, color, alpha);
} vertex_end(vbuff);

vertex_freeze(vbuff);
