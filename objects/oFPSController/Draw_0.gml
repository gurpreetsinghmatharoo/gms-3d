/// @description 
#region Camera
// Look at
var lookX, lookY, lookZ;

lookX = x + dcos(rot[Z]);
lookY = y + dsin(rot[Z]);
lookZ = z + dsin(rot[X]);

// View matrix
matView = matrix_build_lookat(x, y, z, lookX, lookY, lookZ, 0, 0, 1);

camera_set_view_mat(oGameController.camera, matView);
#endregion