#include "colors.inc"
#include "shapes.inc"
#include "shapes2.inc"
#include "shapesq.inc"

camera { location <0,0,-80> look_at <0,0,0> //rotate <0,0,0>
     translate <0,0,0> }  
background {color Gray}

//background {color rgb <0.,0.05,0.05>}
//background {color rgb <0.1,0.2,0.3>}
light_source {<100,50,-100> White*1.2 shadowless }
light_source { <-0,0,0> color White*2 shadowless }
light_source {<100,50,-100> //color rgb <0.8,0.6,0.4>*2 shadowless }
             color White shadowless }

//Virus
union{

//Main capsid                
object { Icosahedron texture {pigment { color Cyan} finish {ambient 0.1 diffuse 0.1 reflection 0.25 specular 1
roughness 0.001 } }
 scale <10,10,10> rotate <0,30,0> scale <1,1.2,1> translate <0,2,0>}
 
//Axial rings
#declare index = 1;
#while (index <=10)

cylinder { <0,-11,0>, <0,-12,0>, 3 texture {pigment { color Cyan} finish {ambient 0.1 diffuse 0.1 reflection 0.25
specular 1 roughness 0.001 } }
 scale <0,0,0> rotate <0,0,0> translate <0,-2*index,0>}

#declare index = index + 1;
#end

//Main axis    
cylinder { <0,-10,0>, <0,-32,0>, 2 texture {pigment { color Blue} finish {ambient 0.1 diffuse 0.1 reflection 0.25
specular 1 roughness 0.001 } }
 scale <0,0,0> rotate <0,0,0>}
 
//Collar
object { Hexagon texture {pigment { color Cyan} finish {ambient 0.1 diffuse 0.1 reflection 0.25 specular 1
roughness 0.001 } }
  rotate <0,0,90> scale <4,0.2,4> translate <0,-12,0>}

cylinder { <0,-11,0>, <0,-12,0>, 3 texture {pigment { color Red} finish {ambient 0.1 diffuse 0.1 reflection 0.25
specular 1 roughness 0.001 } }
 scale <0,0,0> rotate <0,0,0> translate <0,0,0>}

//Baseplate    
object { Hexagon texture {pigment { color Cyan} finish {ambient 0.1 diffuse 0.1 reflection 0.25 specular 1
roughness 0.001 } }
  rotate <0,0,90> scale <4,1.5,4> translate <0,-32,0>}
  
//Collar fibres
#declare index = 1;
#while (index <=6)

cylinder { <4,-12,0>, <7,-20,0>, 0.2 texture {pigment { color Cyan} finish {ambient 0.1 diffuse 0.1 reflection 0.25
specular 1 roughness 0.001 } }
 scale <0,0,0> rotate <0,60*index,0> }

#declare index = index + 1;
#end

//Tail fibres
#declare index = 1;
#while (index <=6)

cylinder { <4,-32,0>, <20,-20,0>, 0.3 texture {pigment { color Cyan} finish {ambient 0.1 diffuse 0.1 reflection
0.25 specular 1 roughness 0.001 } }
 scale <0,0,0> rotate <0,60*index,0> translate <0,1,0>}

cylinder { <20,-20,0>, <37,-30,0>, 0.3 texture {pigment { color Cyan} finish {ambient 0.1 diffuse 0.1 reflection
0.25 specular 1 roughness 0.001 } }
 scale <0,0,0> rotate <0,60*index,0> translate <0,1,0>}

cylinder { <37,-30,0>, <41,-34,0>, 0.15 texture {pigment { color Cyan} finish {ambient 0.1 diffuse 0.1 reflection
0.25 specular 1 roughness 0.001 } }
 scale <0,0,0> rotate <0,60*index,0> translate <0,1,0>}

#declare index = index + 1;
#end

rotate <0,10,0> translate <0,10,0>} //end virus union       
