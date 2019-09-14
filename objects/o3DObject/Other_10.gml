/// @description Create
// Get sprite data
var _w = sprite_get_width(sprite);
var _h = sprite_get_height(sprite);

var _tex = sprite_get_texture(sprite, 0);

var _uvs = texture_get_uvs(_tex);

// Create buffer
vbuff = vertex_create_buffer();

vertex_begin(vbuff, VF_3D) {
	
} vertex_end(vbuff);

vertex_freeze(vbuff);
