#include "phong.h"
#include <math.h>

/////////////////
// Constructor //
/////////////////
phong::phong(float sharpness)
{
  _sharpness = sharpness;
}


phong::phong(const phong& d)
{
  _sharpness = d._sharpness;
}



///////////////
// Operators //
///////////////
phong& phong::operator=(const phong& d)
{
  _assign(d);
  return *this;
}



/////////////
// Methods //
/////////////

//Just took the formulae directory from the slides
float phong::evaluate(const vec3d& in, const vec3d& normal, const vec3d& out) const
{
  // HW3: Implement me
  //      Input: in = light source direction
  //             normal = surface normal
  //             out = view direction
  //      Modifies: nothing
  //      Returns: evaluation of the phong brdf.

  //Value of R, the reflection direction
  vec3d rValue = 2.0 * in.dot(normal) * normal - in; 
  float rValueDotProduct = rValue.dot(out); 

  //Can't emit negative light
  if (rValueDotProduct < 0.0){
    return 0.0; 
  } 

  return pow(rValueDotProduct, _sharpness); 
}



///////////////////////
// Protected Methods //
///////////////////////
void phong::_swap(phong& d)
{
  std::swap(_sharpness, d._sharpness);
}


void phong::_assign(const phong& d)
{
  _sharpness = d._sharpness;
}


void phong::_print(std::ostream& s) const
{
  s << "Phong BRDF: " << _sharpness;
}
