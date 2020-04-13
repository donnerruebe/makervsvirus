file="PLA.stl";
anzahl=4;
h=20.6;
for(i=[0:anzahl-1])translate([0,0,h*i])import(file);
  

for(i=[0:anzahl-2])translate([0,0,3.8+h*i])intersection(){
  import(file);
  union(){
  for(i=[3:3:177]){
    rotate([0,0,i])translate([0,0,16])cube([180,.8,1]);
    }
  }
}

translate([83.5,40,16-.5])cylinder(d=1.5,h=(anzahl-1)*h);