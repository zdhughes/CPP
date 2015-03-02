#include "scale3d.h"

//////////////////
// Constructors //
//////////////////
scale3d::scale3d(void) : transformation3d()
{
  // Do Nothing
}


scale3d::scale3d(float uniformScale) : transformation3d()
{
  // HW4: implement this
  //      returns: nothing
  //      modifies: sets the member variables (defined in transformation3d), such that it represents a uniform scale

  //Just have to create a diagonal matrix with the values of uniformScale
	_transformation.setDiagonal(uniformScale); 
	_inverseTransformation.setDiagonal(1.0 / uniformScale); 
}


scale3d::scale3d(float scaleX, float scaleY, float scaleZ) : transformation3d()
{
  // HW4: implement this
  //      returns: nothing
  //      modifies: sets the member variables (defined in transformation3d), such that it represents a non-uniform cale

	_transformation.setDiagonal(vec3d(scaleX, scaleY, scaleZ));
  //STUPID Note to self: Can't do 1 / vec3d. Gotta do them individually
	_inverseTransformation.setDiagonal(vec3d((1.0 / scaleX), (1.0 / scaleY), (1.0 / scaleZ))); 
}

scale3d::scale3d(const scale3d& s) : transformation3d(s)
{
  // Do Nothing
}
