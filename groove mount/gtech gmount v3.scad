//This is under GNU v2 license


//color([0.9,0.2,0.9])import("fastener servo.stl");
top();
bottom();
gtechplate();
wademount();

module e3lock()
{
translate([0,-16.9,-6.5])rotate([90,0,90])color([0.9,0.2,0.9])import("e3v lock.stl");
translate([0.1,-16,-3])cube([9.9,7,7]);
translate([0.1,8.5,-3])cube([9.9,7,7]);
}

module wademount()
{
//translate([-14,-6.3,0])rotate([90,0,90])color([0.9,0.2,0.9])import("jonaskuehling_gregs-wade-v3_groovemount.stl");
translate([0,25,0])cylinder(d=4.4,h=15,$fn=50,center=true);
translate([0,-25,0])cylinder(d=4.4,h=15,$fn=50,center=true);
}

module gtechplate()
{
//plate mount
//translate([54.5,-255.5])color([0.9,0.9,0.9])import("gtech metal plate.stl");
translate([4.5,-25.5,0])rotate([0,0,-2.15])cylinder(d=4.5,h=15,$fn=50,center=true);
translate([4.5,23.5,0])rotate([0,0,0.45])cylinder(d=4.5,h=15,$fn=50,center=true);
}

//groove slot
cylinder(d=8,h=15,$fn=8);

module fourmount()
{
//translate([52.5,-45,0])color([0.5,0.2,0.8])import("gtech gmount v2 extruder.stl");

translate([2.5,-20,0])cylinder(d=4.5,h=15,$fn=8,center=true);
translate([12.5,-20,0])cylinder(d=4.5,h=15,$fn=8,center=true);
translate([-2.5,-30,0])cylinder(d=4.5,h=15,$fn=8,center=true);
translate([7.5,-30,0])cylinder(d=4.5,h=15,$fn=8,center=true);
    
translate([2.5,-20,2])cylinder(r=4,h=15,$fn=6);
translate([12.5,-20,2])cylinder(r=4,h=15,$fn=6);
translate([-2.5,-30,2])cylinder(r=4,h=15,$fn=6);
translate([7.5,-30,2])cylinder(r=4,h=15,$fn=6);

translate([52.5,-96,0])color([0.1,0.9,0.9])import("fastener base.stl");
translate([-7,-35,0])cube([25,20,10]);
translate([-14.63,-41.0,-1])color([0.1,0.2,0.9])cube([10,10,12]);
}



module groovelock(){
//groove lock screw
translate([0,0-11.6,0])rotate([90,0,90])cylinder(d=4.5,h=60,$fn=8,center=true);
translate([0,0+11.6,0])rotate([90,0,90])cylinder(d=4.5,h=60,$fn=8,center=true);

//nut
translate([-4.5,0-11.6,0])rotate([270,90,90])cylinder(r=4.2,h=30,$fn=6);
translate([-4.5,0+11.6,0])rotate([270,90,90])cylinder(r=4.2,h=30,$fn=6);
}

module top()
{
    translate([52.5,-165,6.5])color([0.9,0.2,0.1])import("gtech gmount v2 top.stl");
translate([-27.5,-18.1,-5])cube([27.5,10,10]);
    translate([-27.5,8.1,-5])cube([27.5,10,10]);
    
    {
    translate([-20,-14.9,11.575])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    translate([-20,-14.9,19.99])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    translate([-20,-14.9,28.58])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    
    translate([-20,14.9,11.575])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    translate([-20,14.9,19.99])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    translate([-20,14.9,28.58])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    }
    
    //nut trap
    {
    translate([-21.197,-14.9,11.575])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
    translate([-21.197,-14.9,19.99])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
    translate([-21.197,-14.9,28.58])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);

    translate([-21.197,14.9,11.575])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
    translate([-21.197,14.9,19.99])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
    translate([-21.197,14.9,28.58])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
    }
    
//    union(){
//    translate([-27.5,-18.4,-6.5])cube([10.29,36.8,40]);
//    translate([-22.285,-18.4,6.5])rotate([0,45,0])cube([5,36.8,5]);
//    }
}
//translate([-5,-32.5,-6.5])cube([20,14.79,13]);
module bottom()
{
    translate([52.5,55,-6.5])color([0.1,0.2,0.9])import("gtech gmount v2 bottom.stl");
    
    //screw holes
    {
    translate([-20,-14.9,-11.423])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    translate([-20,-14.9,-20.008])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    translate([-20,-14.9,-28.428])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    
    translate([-20,14.9,-11.423])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    translate([-20,14.9,-20.008])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    translate([-20,14.9,-28.428])rotate([0,90,0])cylinder(d=4.5,h=20,center=true);
    }
    
    //nut trap
    {
    translate([-21.197,14.9,-11.423])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
translate([-21.197,-14.9,-11.423])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
translate([-21.197,-14.9,-20.008])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
translate([-21.197,-14.9,-28.428])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
    
translate([-21.197,14.9,-11.423])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
translate([-21.197,14.9,-20.008])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
translate([-21.197,14.9,-28.428])rotate([0,90,0])cylinder(r=4,h=6,$fn=6);
    }
//    translate([-27.5,-18.4,-33.5])cube([10.29,36.8,40]);
}
