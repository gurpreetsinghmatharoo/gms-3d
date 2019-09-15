/// @description 
#region Camera
// Look at
var lookX, lookY, lookZ;

lookX = x + dcos(rot[Z] + rot2[Z]) * dcos(rot[X] + rot2[X]);
lookY = y + dsin(rot[Z] + rot2[Z]) * dcos(rot[X] + rot2[X]);
lookZ = z + dsin(rot[X] + rot2[X]);

// View matrix
matView = matrix_build_lookat(x, y, z, lookX, lookY, lookZ, 0, 0, 1);

camera_set_view_mat(oGameController.camera, matView);
#endregion

// Bob test
//surface_set_target(oGameController.testSurf);

//draw_circle_color(RES_W / 2 + rot2Target[Z] * 10, RES_H / 2 - rot2Target[X] * 10, 2, c_red, c_red, 0);
	
//surface_reset_target();