gml_pragma("global", "init()");

#region ColShape
#macro X 0
#macro Y 1
#macro Z 2
#macro RAD 3
#endregion

#region Vertex format for 3DObjects
#macro VF_3D global._vertexType3D

vertex_format_begin();

vertex_format_add_position_3d();
vertex_format_add_texcoord();

VF_3D = vertex_format_end();
#endregion