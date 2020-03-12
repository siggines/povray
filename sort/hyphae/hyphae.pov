#include "colors.inc"

camera{
	location<-7,7,-30>
	look_at<.7,0,0>
	angle 30
}
light_source{
<0,0,-90>
color White
spotlight
radius 30
falloff 4 //WHAT THIS DOES I KNOW NOT
tightness 1
area_light <1,0,0><0,0,1>2,2 
adaptive 1 //No adaptive == long time to trace (some reason). Higher the value the cleaner the umbra, vry high == longer trace.
jitter //Makes the umbra softer
point_at<0,0,0>
}
//light_source{ 
//<-3,-5,-390> 
//color <0.9,0.3,0.3>
//}
background{
color DarkGreen
}

#declare hyphae_texture = texture{
	pigment{White}
	finish{
	diffuse .5		
	}	
}

#declare half_torus = difference{
	torus{
		3,.3
		rotate 90*x
	}
	box{
		<-5,-5,-1>,<5,1,1>
	}
	box{
		<-5,-5,-1><-1,5,1>
	}
}

#declare cyli = cylinder{
	<0,3,0>,<0,-3,0>,.3
}

#declare septa_0 = union{
	object{half_torus	
	}
	object{half_torus 
		rotate 180*x rotate 180*y 
		translate 5.69*x translate 2*y
	}
	object{cyli
		rotate 90*z rotate 13*z
		translate -3.79*x translate 2.2*y
	}
	texture{hyphae_texture}
}	//make more of these	

#declare entire = union{
	object{ septa_0
		
	}
	object{ septa_0
		rotate 90*z
		translate -1*x
	}
}

object{ entire
	scale 1.7
}
