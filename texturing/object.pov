#include "colors.inc"
#include "textures.inc"
camera{
    location<0,3,-9>
    look_at<0,0,0>
    angle 60
}
light_source{
    <0,1,-10>
    color Red
    area_light<0,0,0><1,0,1>3,3
    adaptive 1
	jitter
}
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
			reflection 0.01
		}
	}
}
sphere{
    <0,0,1>, 1
    texture{
        pigment{ color Yellow }
        normal{ bumps 0.9 scale 0.1 }
        finish{ ambient .3 phong .1 }
    }
}
