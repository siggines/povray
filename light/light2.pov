#include "colors.inc"
#include "textures.inc"

camera{
	location <-4,3,-9>
	look_at<0,0,0>
	angle 48
}

light_source{ 
	<2,10,-3>
	color White
	spotlight
	radius 17
	falloff 24
	tightness 30
	area_light<1,0,0><0,0,1>2,2
	adaptive 1
	jitter
	point_at <0,0,0>
}
light_source{ 
	<2,10,-3>
	color Red
	spotlight
	radius 17
	falloff 24
	tightness 30
	area_light<1,0,0><0,0,1>2,2
	adaptive 1
	jitter
	point_at <2,0,0>
}
light_source{ 
	<2,10,-3>
	color Blue
	spotlight
	radius 17
	falloff 24
	tightness 30
	area_light<1,0,0><0,0,1>2,2
	adaptive 1
	jitter
	point_at <-2,0,0>
}

/*light_source{
	<2,10,-2>
	color White
	area_light<5,0,0>,<0,0,5>,5,5 //these are tiny light in it. 5*5=25
//	THERE ARE FOUR LIGHTS!
	adaptive 1
	jitter
}*/

plane{
	y,-1
	texture{
		pigment{
			checker
			color rgb<0.5,0,0>
			color rgb<0,0.5,0.5>
		}
		finish{
			diffuse 0.4
			ambient 0.2
			phong 1
			phong_size 100
			reflection 0.25
		}
	}
}
torus{ 1.5, 0.5 texture{ Brown_Agate } rotate<90,160,0> translate<-1,1,3> }
box{ <-1,-1,-1>, <1,1,1> texture{ DMFLightOak } translate<2,0,2.3>}
cone{ <0,1,0>,0, <0,0,0>,1 texture{ PinkAlabaster } scale<1,3,1> translate<-2,-1,-1>} //with cones & boxes, the location also has to do with size(the second number), it is the location of bottom left and top right. Because they are irregular shapes, not the case for shapes such as spheres.
sphere{ <0,0,0>,1 texture{ Sapphire_Agate } translate<1.5,0,-2>}

