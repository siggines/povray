#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
light_source { <5, 0, -10> color White }
light_source { <-5, 0, -10> color White }
camera{
location<0,0,-15>
look_at<0,0,0>
}
#declare x_stretch = transform {
	scale x*7
}
sphere{
	<0,0,0>,1
	pigment{ Red }
	/*transform{
		scale<3,1,1>
		translate x*1
		inverse
	}*/
	transform{ x_stretch }
}


