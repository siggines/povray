#include "colors.inc"

camera{
location<0,30,-135> //so it is infront and aligned
look_at <0,0,0> //where its' lens faces
angle 30
}
light_source{
<4,6,-10>
color White
}
light_source{
<1,1,-10>
color White
}
background{
color Black
}

#declare Half_Torus = difference{ //same as intersection with inverse keyword on second (orwhatever) object
	torus{
	3,.7 //remember radius spceifiers are outside of <>
	rotate -90*x
	}
	box{
	<-5,-5,-1>,<5,0,1>
	}
}

#declare Flip = 180*x;
#declare Translate = 6;

#declare Chain_Segment = cylinder{
	<0,4,0>,<0,-4,0>,.7
}

#declare Golden = texture{
	pigment{Silver}
	finish{
	ambient .1
	diffuse .3
	brilliance 3.5
	reflection .7
	metallic
	}
}

#declare Link = union{
	object{ Half_Torus translate y*Translate/2 }
	object{ Half_Torus rotate Flip translate -y*Translate/2}
	object{ Chain_Segment translate x*Translate/2 }
	object{ Chain_Segment translate -x*Translate/2 }
	texture{Golden}
}

#declare Link_Translate = Translate*2-2*y;

#declare Pair = union{
	object{ Link }
	object{ Link translate y*Link_Translate rotate y*90 }
}

#declare Chain = union{
	object{Pair}
	object{ Pair translate y*Link_Translate*2 }	
	object{ Pair translate y*Link_Translate*4 }
	object{ Pair translate y*Link_Translate*6 }
	object{ Pair translate -y*Link_Translate*2 }
	object{ Pair translate -y*Link_Translate*4 }
	object{ Pair translate -y*Link_Translate*6 }
}

object{ 
	Chain
	scale .9
	rotate <0,45,-45>
}
