/// @description 
// Macros
#macro FLOOR_Z 0
#macro FOV_DEFAULT 70

// Resolution
#macro RES_W 1280
#macro RES_H 720
#macro RES_SCALE 1

// Set up camera
camera = camera_create_view(0, 0, 1280, 720);

view_enabled = true;
view_visible = true;
view_set_camera(0, camera);

// Set up 3D
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);

matProj = matrix_build_projection_perspective_fov(FOV_DEFAULT, RES_W/RES_H, 0.3, 3000);
camera_set_proj_mat(camera, matProj);

// Resolution
window_set_size(RES_W, RES_H);
surface_resize(application_surface, RES_W / RES_SCALE, RES_H / RES_SCALE);

// Mouse
window_set_cursor(cr_none);