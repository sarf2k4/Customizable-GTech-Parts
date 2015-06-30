//true = nut slot for m8 threaded rod
//false = geeetech flange nut
nut=false;
rod=8;

//1= x motor
//2= x idler
item=2;

//lm8uu length;true = 25mm, false = 45mm
//this is to those using either 25mm or 45mm lm8uu length
type=true;

    
module xmotor(){
difference()
{
    translate([-27.5,0,0])import("x motor.stl");  
    
    
    translate([32.5,16.5,0])color([0.1,0.9,0.9]) cylinder(d=15.8,h=57,$fn=700);
    translate([0,-13.3,-5.69])tie();
    translate([0,85.2,-5.69])mirror([0,180,0])tie();
    
    
}
}

module tie(){
    difference()
    {
    translate([56,60.75,53.5])rotate([45])color([0.4,0.9,0.1]) cylinder(d=2.5,h=10,$fn=50);
        translate([53,59.85,52.])cube([5,5,5]);
        translate([53,52,59.69])cube([5,5,5]);
    }
}
module xidler(){
difference()
{
    color([0.9,0.1,0.2])import ("x idler.stl");
translate([32.5,16.5,0])color([0.1,0.9,0.9]) cylinder(d=15.8,h=57,$fn=700);
}
}

module holder(top){
translate([27,22.5,top])color([0.5,0.9,0.1])cube([11,5,1.5]);
translate([27,22.5,0])color([0.5,0.9,0.1])cube([11,5,1.5]);
}
 // Main bearing cut
// union()
{
    if(item==1)
    {
        if(nut)
        {
            difference()
            {
                union()
                {
                    translate([46,8.5,0])color([0.9,0.9,0.9])cube([15,16,10]);
            xmotor();
                }
                translate([53.5,16.5,0])rotate([0,0,90])color([0.1,0.9,0.9]) cylinder(r=rod,h=6,$fn=6);
                translate([53.5,16.5,0])color([0.1,0.9,0.9]) cylinder(d=10.5,h=10,$fn=50);
            }
        }
    
    else
        xmotor();
    }
    else if(item==2)
    {
        if(nut){
        difference()
            {
                union()
                {
                    translate([4,8.5,0])color([0.9,0.9,0.9])cube([15,16,10]);
            xidler();
                }
                echo (53.3-46.3);
                translate([11.5,16.5,0])rotate([0,0,90])color([0.1,0.9,0.9]) cylinder(r=rod,h=6,$fn=6);
                translate([11.5,16.5,0])color([0.1,0.9,0.9]) cylinder(d=10.5,h=10,$fn=50);
            }
            
        }
        else
            xidler();
    }
    
    if (type)
    {
        holder(27.5);
        holder(55);
    }
    //geeetech default
    else
    {
        holder(47);
    }
//  translate([32.5,16.5,2]) color([0.3,0.9,1]) cylinder(h = 50, d=15, $fn=50);
 
 }