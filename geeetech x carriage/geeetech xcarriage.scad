
//pick your type here
//1 = vanilla
//default = Geeetech
type =1;


screwdist= type==1 ? 12:15;
screwsize= type==1 ? 3.5:4.5;
screwface= type==1 ? 50:50;
slotsize= type==1 ? 6:8;
slotface= type==1 ? 6:50;


//geeetech x carriage
difference(){
union(){
import("gtech carriage.stl");

//closing the holes
translate([28.3-13,35.1,8.25])color([0.5,0.5,0.5])cube([22,12,16.5],center=true);
translate([28.3+13,35.1,8.25])color([0.5,0.5,0.5])cube([22,12,16.5],center=true);
}
//these are the screw holes
//geeetech
{
//small screw holes
translate([28.3-screwdist,34.5,-1])color([0.5,0.9,0.2])cylinder(d=screwsize, h=20, $fn=screwface);
translate([28.3+screwdist,34.5,-1])cylinder(d=screwsize, h=20, $fn=screwface);
//large screw holes
translate([28.3-screwdist,34.5,7])color([0.5,0.9,0.2])cylinder(d=slotsize, h=20, $fn=slotface);
translate([28.3+screwdist,34.5,7])color([0.5,0.9,0.2])cylinder(d=slotsize, h=20, $fn=slotface);
}


//squarring the belt holder
{
//eliminating lower teeth
translate([28.3,28.5,12])color([0.5,0.9,0.5])cube([70,2,10],center=true);

translate([28.3,34.5,12])color([0.5,0.9,0.5])cube([5,14,10],center=true);

translate([28.3,41.3,12])color([0.5,0.9,01])cube([75,1,10],center=true);


translate([-5,41.25,14]) rotate([45,0,0]) color([0.5,0.9,0.5])cube([67,15,15]);
    
 for ( i = [0 : 15] ){
  translate([49.95-i*3,39.65,7]) color([0.5,0.9,0.5])cube([1.7,2.25,9.5]);
 }
 
 
translate([28.3-23.,34.5,12])color([0.5,0.9,0.5])rotate([0,0,35])cube([1.5,15,10],center=true);
translate([28.3+23.,34.5,12])color([0.5,0.9,0.5])rotate([0,0,325])cube([1.5,15,10],center=true);
 
}


}