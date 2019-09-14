/// @description 
// Macros
#macro FLOOR_Z 0
#macro FOV_DEFAULT 70

// Resolution
#macro RES_W 1280
#macro RES_H 720
#macro RES_SCALE 3

// Set up camera
camera = camera_create_view(0, 0, 1280, 720);

// Set up 3D
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);

matProj = matrix_build_projection_perspective_fov(FOV_DEFAULT, RES_W/RES_H, 0.3, 3000);
camera_set_proj_mat(camera, matProj);

// Resolution
window_set_size(RES_W, RES_H);
surface_resize(application_surface, RES_W / RES_SCALE, RES_H / RES_SCALE);
display_set_gui_size(RES_W, RES_H);

// Mouse
window_set_cursor(cr_none);

// Test surface
surface_depth_disable(true);
testSurf = -1;