#include "colors.inc"
#include "textures.inc"
camera{
    location<0,3,-9>
    look_at<0,0,0>
    angle 60
}
light_source{
    <0,1,-10>
    color White
    area_light<0,0,0><1,0,1>3,3
    adaptive 1
    	jitter
}
sphere{
    <0,0,1>, 3
    texture{
        pigment{
		wood 
		color_map{
			[0.0 color Blue]
			[0.5 color Blue]
			
			[0.5 color Green]
			[1 color Green]
		}
		turbulence 0.3
		scale<3,1,6> 
	}
	finish{ ambient 0.3 phong .1 }
	}
}

