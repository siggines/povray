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

difference{
	box{ 
		-1,1 //this corresponds to <-1,-1,-1> <1,1,1>
		pigment{ Red }
	}
	cylinder{
		-1.001*z,1.001*z, 0.5 
		pigment{ Green }
	}
}
