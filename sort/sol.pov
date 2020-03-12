#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"
camera{
	location<0,0,-35>
	look_at<0,0,0>
	focal_point<0,0,-10>
	aperture 0.9
	blur_samples 99
	focal_point<-12,0,0>
	aperture 0.9
	blur_samples 99
}
#declare sun = object{
	sphere{
	<0,0,0>,3
	texture{
		pigment{ color White }
		finish{ ambient .9 diffuse .6 }
	}
	}
}
light_source{
	<0,0,-10>
	color Blue
	looks_like{ sun }
	fade_distance 7
	fade_power 1
	area_light<1,1,1><-1,-1,-1>3,3
	adaptive 1
	jitter
}
background{
	color Gray
}
sphere{
	<-12,0,-10>,3
	texture{
		pigment{ 
			wood 
			color_map{ 
				[0.0 color Yellow]
				[0.7 color White]
				[1.0 color Gray]
			}
			turbulence 0.9
			scale<9,6,1>
		}
		normal{ bumps 0.1 scale 0.1 }
		finish{ phong 0.9 }
	}
}
