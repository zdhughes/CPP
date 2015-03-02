#include "rotation3d.h"

//////////////////
// Constructors //
//////////////////
rotation3d::rotation3d(void) : transformation3d()
{
  // Do Nothing
}


rotation3d::rotation3d(float angle, const vec3d& axis) : transformation3d()
{
  // HW4: implement this.
  //      returns: nothing
  //      modifies: sets the member variables (defined in transformation3d) such that it 
  //	  performs a rotation of specified 'angle' in degrees along an 'axis'

  float s = sin(angle * M_PI / 180.0f);
  float c = cos(angle * M_PI / 180.0f);
  //Has to be a unit vector
  vec3d normalized = axis.normalize(); 

  //Apply Rodrigues' rotation formulae
  //Note to self: checked twice
  _transformation(0, 0) = c + (normalized.x * normalized.x) * (1.0 - c);
  _transformation(1, 0) = (normalized.z * s) + (normalized.x * normalized.y) * (1.0 - c);
  _transformation(2, 0) = (-1.0 * (normalized.y * s)) + (normalized.x * normalized.z) * (1.0 - c);
  //Sanity check-- did CyberDuck save this comment? 
  _transformation(0, 1) = (normalized.x * normalized.y) * (1 - c) - (normalized.z * s);
  _transformation(1, 1) = c + (normalized.y * normalized.y) * (1.0 - c);
  _transformation(2, 1) = (normalized.x * s) + (normalized.y * normalized.z) * (1.0 -c);
  _transformation(0, 2) = (normalized.y * s) + (normalized.x * normalized.z) * (1.0 - c);
  _transformation(1, 2) = (-1.0 * normalized.x * s) + (normalized.y * normalized.z ) * (1.0 - c);
  _transformation(2, 2) = c + (normalized.z * normalized.z) * (1.0 - c); 

  _inverseTransformation = _transformation.transpose();
}


rotation3d::rotation3d(const rotation3d& r) : transformation3d(r)
{
  // Do Nothing
}
