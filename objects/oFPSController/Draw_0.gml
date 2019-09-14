/// @description 
#region Camera
// Look at
var lookX, lookY, lookZ;

lookX = x + dcos(rot[Z] + rot2[Z]);
lookY = y + dsin(rot[Z] + rot2[Z]);
lookZ = z + dsin(rot[X] + rot2[X]);

// View matrix
matView = matrix_build_lookat(x, y, z, lookX, lookY, lookZ, 0, 0, 1);

camera_set_view_mat(oGameController.camera, matView);
#endregion