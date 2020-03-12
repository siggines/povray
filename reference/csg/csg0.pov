#include "colors.inc"

camera{
	location<0,0,-15>
	look_at<0,0,0>
	angle 30
}
light_source{
	<500,500,-1000>
	color White
}
plane{
	y, -1.5
	pigment{ checker Green White }
}

union{
	sphere{
		<0,0,0>, 1
		translate -0.5*x
	}

	sphere{
		<0,0,0>, 1
		translate 0.5*x
	}
	
	pigment{ Red }
	scale<1,1,1> //x and y are 2d, z is 3d.
	rotate<90,-45,180> 
}
