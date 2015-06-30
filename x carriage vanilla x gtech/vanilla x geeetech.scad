//author: Sarf2k4
//Under GNU v2 License

//presets
//0 geeetech
//1 vanilla

preset=0;

//copy and add more presets, don't change numbers before ';'
{
screwdist= preset==1 ? 12:15;
screwsize= preset==1 ? 3:4;
slotface= preset==1 ? 6:50;
}   
    module x_carriage_holes(screwdist,screwsize,screwface,slotsize,slotface){
  // Extruder mounting holes
  translate([-7.155+screwdist,0.251,-1])cylinder(d=screwsize+0.5, h=20, $fn=50);
  translate([-7.155+screwdist,.251,10])cylinder(r=screwsize, h=20, $fn=50); 
  translate([-7.155-screwdist,0.251,-1])cylinder(d=screwsize+0.5, h=20, $fn=50);
  translate([-7.155-screwdist,0.251,10])cylinder(r=screwsize, h=20, $fn=50); 	
}

//module x_carriage()
{
 difference()
    {
    color([0.9,0.1,0.5])import("vanilla x geeetech.stl");
    x_carriage_holes(screwdist,screwsize,screwface,slotsize,50);
 }
}

