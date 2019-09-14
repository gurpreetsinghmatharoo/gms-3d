/// @description 
#region Camera
// Look at
var lookX, lookY, lookZ;

lookX = x + dcos(rotZ);
lookY = y + dsin(rotZ);
lookZ = z + dsin(rotX);

// View matrix
matView = matrix_build_lookat(x, y, z, lookX, lookY, lookZ, 0, 0, 1);

camera_set_view_mat(oGameController.camera, matView);
#endregion