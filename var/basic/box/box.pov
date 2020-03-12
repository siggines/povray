#include "colors.inc"
#include "stones.inc"

camera{
location<0,0,-5> //so it is infront and aligned
look_at<0,0,0> //where its' lens faces
}
light_source{
<4,6,-10>
color White
}
light_source{
<0,0,-15>
color Yellow
}
sky_sphere{
pigment{ gradient y color_map{[0 color Blue][1 color White]}
translate <0,-0.5,0>
}
}
box {
<-1,-1,-1>,
<1,1,1> //these are two corners; bottom left 0,0 to top right hgihest,highest!
texture {
T_Stone25
scale 4
}
rotate <27,30,0>
}

