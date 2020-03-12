#include "colors.inc"
#include "textures.inc"
camera{
    location<0,3,-19>
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
    <-6,0,1>, 3
    texture{
        pigment{
		DMFWood4
		scale 4
	}
	finish{ Shiny }
	}
}
sphere{
    <6,0,1>, 3
    texture{
        PinkAlabaster //Moral is that some textures are just pigments while others are whole textures which
			// predefine the finish. 
	}
}

