#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "shapesq.inc"

camera{
	location <0,0,-70>
	look_at<0,0,0>
	angle 30
}

light_source{ 
	<0,0,-30>
	color White
	//spotlight
	//radius 12
	//falloff 14
	//tightness 10
	//point_at <2,0,0>
}
background{color Gray}

union{
object {
	Icosahedron 
	texture {
		pigment { color Cyan}
		 finish {ambient 0.1 diffuse 0.1 reflection 0.25 specular 1 roughness 0.001 } 
	}
	scale <10,10,10> rotate <0,30,0> scale <1,1.2,1> translate <0,2,0>}
}

