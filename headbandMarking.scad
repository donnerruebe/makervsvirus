marking="PLA";

difference(){
import("Covid-19_v18.stl", convexity=3);
#translate([-86.3,58,6])rotate([90,0,-90])linear_extrude(height=1)offset(r = .1)scale([1,1,.5])text(marking, size = 6,font="UnDinaru:style=Bold" ,height=.5);
}

module mirror_copy(v = [1, 0, 0]) {
    children();
    mirror(v) children();
}

p=[92.15,.8,14.3];
mirror_copy(){translate(p)rotate([-90,0,0])union(){
  h1=17.5;
  sphere(d=2,$fn=40);
  translate([0,0,h1])sphere(d=2,$fn=40);
  cylinder(d=2,h=h1,$fn=40);
  
}}