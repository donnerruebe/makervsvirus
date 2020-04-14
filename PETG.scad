difference(){
import("Covid-19_v18.stl", convexity=3);
#translate([-86.3,64,6])rotate([90,0,-90])linear_extrude(height=1)offset(r = .1)scale([1,1,.5])text("PETG", size = 6,font="UnDinaru:style=Bold" ,height=.5);
}
