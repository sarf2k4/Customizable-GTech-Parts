//vanilla, type = 1
//default geeetech

type=2;

screwdist= type==1 ? 12:15;
screwsize= type==1 ? 3.5:4.5;
screwface= type==1 ? 50:50;
slotsize= type==1 ? 6:8;
slotface= type==1 ? 6:50;
    
    module x_carriage_holes(screwdist,screwsize,screwface,slotsize,slotface){
  // Extruder mounting holes
  translate([-7.155+screwdist,0.251,-1])cylinder(d=screwsize, h=20, $fn=50);
  translate([-7.155+screwdist,.251,10])cylinder(d=slotsize, h=20, $fn=slotface); 
  translate([-7.155-screwdist,0.251,-1])cylinder(d=screwsize, h=20, $fn=50);
  translate([-7.155-screwdist,0.251,10])cylinder(d=slotsize, h=20, $fn=slotface); 	
}

//module x_carriage()
{


    
 difference()
    {
    color([0.9,0.1,0.5])import("vanilla x geeetech.stl");
    x_carriage_holes(screwdist,screwsize,screwface,slotsize,slotface);
 }
}

