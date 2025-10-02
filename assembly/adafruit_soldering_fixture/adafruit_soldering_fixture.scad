// ignition-adapter soldering jig

oversize = 1;


// subtract cutouts for the standoffs, circuits, and USB notch
difference(){
// create the body
cube(size=[40+7,17,10], center=false);
    
// create the standoff cutout
translate([10,-1,5])
    cube(size=[(42+oversize),17+(2*oversize),(5+oversize)], center=false);

// create the circuit clearance cutout
translate([15,2.5,-(oversize)])
    cube(size=[(25+7+oversize),12,5+(2*oversize)], center=false);

// create the usb cutout
translate([8,3.5,6])
    cube(size=[(3+oversize),10,(4+oversize)], center=false);
}