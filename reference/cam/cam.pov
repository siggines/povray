#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"

light_source { <5, 30, -30> color White }
light_source { <-5, 30, -30> color White }

camera{
location<0,0,-10>
look_at<0,0,0>
focal_point<-9,1,30> //cylinder in Focus
//focal_point<0,0,0> //box in Focus
aperture 0.6 //Larger value means smaller focus (distance of closing from edge of lens not radius of opening). 
blur_samples 90 //higher is better quality, takes longer to render.
}

sphere {
    <1, 0, -6>, 0.5
    finish {
        ambient 0.1
        diffuse 0.6
    }
    pigment { NeonPink }
}
box {
    <-1, -1, -1>, < 1,  1,  1>
    rotate <0, -20, 0>
    finish {
        ambient 0.1
        diffuse 0.6
    }
    pigment { Green }
}
cylinder {
    <-9, 6, 30>, <-9, -1, 30>, 3
    finish {
        ambient 0.1
        diffuse 0.6
    }
    pigment {
	wood
	color_map{
		[0.0 color Blue]
		[1 color Green]
	}
	turbulence 0.3
	scale<9,0,0>
	}
}
plane {
    y, -1.0
    pigment {
      checker color Gray65 color Gray30
    }
}


