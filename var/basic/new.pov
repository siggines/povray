#include "colors.inc"

global_settings{ ambient_light Green }

camera{
location<0,0,-5> //so it is infront and aligned
look_at<0,0,0> //where its' lens faces
}
light_source{
<4,6,-10>
color White
}
sky_sphere{
pigment{ gradient y color_map{[0 color Blue][1 color White]}
translate <0,-0.5,0>
}
}
sphere{
<0,0,0>, 2 //Location and radius!
pigment{ color Gray }
finish { ambient .3 }
}
sphere{
<3,0,0>, 1 
pigment{ color Gray }
}

