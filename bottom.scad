marking="PETG";
difference(){
translate([-90,-70,250])import("bottom_reinforcement.stl", convexity=3);
translate([-10,4.3,8])rotate([90,0,191.5])linear_extrude(height=1)offset(r = .1)scale([1,1,.5])text(marking, size = 6,font="UnDinaru:style=Bold" ,height=.5);
}
