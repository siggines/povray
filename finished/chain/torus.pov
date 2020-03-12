#include "colors.inc"

camera{
location<0,0.1,-25> //so it is infront and aligned
look_at <0,0,0> //where its' lens faces
angle 30
}
light_source{
<4,6,-10>
color White
}
background{
color Black
}

#declare Half_Torus = difference{ //same as intersection with inverse keyword on second (orwhatever) object
	torus{
	3,.3 //remember radius spceifiers are outside of <>
	rotate -90*x
	}
	box{
	<-5,-5,-1>,<5,0,1>
	}
	pigment{Green}
}
#declare Flip = 180*x;
#declare Translate = 6;

union{
	object{Half_Torus}

	object{Half_Torus
		rotate Flip
		translate x*Translate
	}
	object{Half_Torus
		translate x*Translate*2
	}
	object{Half_Torus
		rotate Flip
		translate x*Translate*3
	}
	object{Half_Torus
		rotate Flip
		translate -x*Translate
	}
	object{Half_Torus
		translate -x*Translate*2
	}

	object{Half_Torus
		rotate Flip
		translate -x*Translate*3
	}
	object{Half_Torus
		translate -x*Translate*4
	}
	rotate y*45
	translate z*20
}

