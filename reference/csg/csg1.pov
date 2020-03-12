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

#declare lens_with_hole = difference{
	intersection{
		sphere{
			<0,0,0>, 1
			translate -0.5*x
		}
		sphere{
			<0,0,0>, 1
			translate 0.5*x
		}
		rotate 90*y 
	}
	cylinder{ 
		<0,0,-1>
		<0,0,1>, .35
		rotate 45*y
	}
}

merge{
	object{ lens_with_hole translate <-.65,.65,0> }
	object{ lens_with_hole translate <.65,.65,0> }
	object{ lens_with_hole translate <-.65,-.65,0> }
	object{ lens_with_hole translate <.65,-.65,0> }
	pigment{ Red filter .3 }
}
