#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
light_source { <5, 0, -10> color White }
light_source { <-5, 0, -10> color White }
camera{
location<0,0,-15>
look_at<0,0,0>
}
sphere{
	0,3
	texture{
		Jade
		scale 3
	}	
}


