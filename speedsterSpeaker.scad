//Speedster dimension
$fn=80;
//Dimensions are in mm
panelThickness = 12.7;
height = 254;
//Front Panel Dimensions
frontWidth = 152.4;
//Side Panels Dimensions
sideWidth = 203.2;
//Back Panel Dimensions
backWidth = 152.4;
//Tweeter Dimensions
tweeterOuterDiameter = 102;
tweeterInnerDimensionY = 68;
tweeterInnerDimensionX = 57.5;
tweeterThickness = 5;
tweeterX = frontWidth/2;
tweeterY = height - 63.5;
tweeterScrewDiameter = 2.5;
tweeterScrewX = 31;
tweeterScrewY = 31;
//Woofer Dimensions
wooferDiameter = 96.3;
wooferX = frontWidth/2;
wooferY = height - 165.1;
wooferScrewDiameter = 2.5;
wooferScrewX = 41;
wooferScrewY = 41;
//Top and Bottom Panels
topWidth = 6;
topLength = 8;
//Connection Joints/Grooves
grooveThickness = 6;
grooveDepth = 6;
//Port Dimensions
portDiameter = 42;
portX = backWidth/2;
portY = height - 63.5;
//Terminal Hole Dimensions
terminalDiameter = 5.5;
terminalY = (height)/2 - 50;
terminal1X =(backWidth)/2 + 15;
terminal2X = (backWidth)/2 - 15;
/*
//Union the panels for the front half
difference(){
    union(){
//Front Panel
    difference(){
        linear_extrude(height)
        square([frontWidth, panelThickness]);

        //Woofer hole cut out
        translate([wooferX, panelThickness, wooferY])
        rotate([90, 0, 0])
        linear_extrude(panelThickness)
        circle(d=wooferDiameter);
        
        //Woofer Screws
        translate([wooferX + wooferScrewX, panelThickness, wooferY + wooferScrewY])
        rotate([90,0,0])
        linear_extrude(panelThickness)
        circle(d=wooferScrewDiameter);
        
        translate([wooferX + wooferScrewX, panelThickness, wooferY - wooferScrewY])
        rotate([90,0,0])
        linear_extrude(panelThickness)
        circle(d=wooferScrewDiameter);

        translate([wooferX - wooferScrewX, panelThickness, wooferY + wooferScrewY])
        rotate([90,0,0])
        linear_extrude(panelThickness)
        circle(d=wooferScrewDiameter);

        translate([wooferX - wooferScrewX, panelThickness, wooferY - wooferScrewY])
        rotate([90,0,0])
        linear_extrude(panelThickness)
        circle(d=wooferScrewDiameter);

        //Tweeter Outer hole cut out
        translate([tweeterX, tweeterThickness, tweeterY])
        rotate([90, 0, 0])
        linear_extrude(tweeterThickness)
        circle(d=tweeterOuterDiameter);
        
        //Tweeter Screws
        translate([tweeterX + tweeterScrewX, tweeterThickness + panelThickness, tweeterY + tweeterScrewY])
        rotate([90, 0, 0])
        linear_extrude(panelThickness)
        circle(d=tweeterScrewDiameter);
        
        translate([tweeterX + tweeterScrewX, tweeterThickness + panelThickness, tweeterY - tweeterScrewY])
        rotate([90, 0, 0])
        linear_extrude(panelThickness)
        circle(d=tweeterScrewDiameter);
        
        translate([tweeterX - tweeterScrewX, tweeterThickness + panelThickness, tweeterY + tweeterScrewY])
        rotate([90, 0, 0])
        linear_extrude(panelThickness)
        circle(d=tweeterScrewDiameter);
        
        translate([tweeterX - tweeterScrewX, tweeterThickness + panelThickness, tweeterY - tweeterScrewY])
        rotate([90, 0, 0])
        linear_extrude(panelThickness)
        circle(d=tweeterScrewDiameter);

        
        //Tweeter Inner hole cut out
        translate([tweeterX - tweeterInnerDimensionX/2, tweeterThickness + panelThickness, tweeterY - tweeterInnerDimensionY/2])
        rotate([90,0,0])
        linear_extrude(panelThickness)
        square([tweeterInnerDimensionX, tweeterInnerDimensionY]);
    }

    //Right Panel
    translate([frontWidth - panelThickness, 0, 0])
    linear_extrude(height)
    square([panelThickness, sideWidth]);

    //Left Panel
    linear_extrude(height)
    square([panelThickness, sideWidth]);

    //Bottom Panel
    linear_extrude(panelThickness)
    square([frontWidth, sideWidth]);

    //Top Panel
    translate([0,0, height - panelThickness])
    linear_extrude(panelThickness)
    square([frontWidth, sideWidth]);
}

    //Added grooves for joint connection with back
    translate([panelThickness/2 - grooveThickness/2, sideWidth - grooveThickness, panelThickness/2 - grooveThickness/2])
    linear_extrude(grooveDepth)
    square([frontWidth - panelThickness, grooveThickness]);

    translate([panelThickness/2 - grooveThickness/2, sideWidth - grooveThickness, height - panelThickness/2 - grooveThickness/2])
    linear_extrude(grooveDepth)
    square([frontWidth - panelThickness + grooveThickness, grooveThickness]);

    translate([frontWidth - panelThickness/2 - grooveThickness/2, sideWidth - grooveThickness, panelThickness/2 - grooveThickness/2])
    linear_extrude(height - panelThickness)
    square([grooveThickness, grooveDepth]);

    translate([panelThickness/2 - grooveThickness/2, sideWidth - grooveThickness, panelThickness/2 - grooveThickness/2])
    linear_extrude(height - panelThickness)
    square([grooveThickness, grooveDepth]);
}
*/

//Back Panel
union(){
    
    difference(){
        linear_extrude(height)
        square([backWidth, panelThickness]);

        translate([portX, 0, portY])
        rotate([-90,0,0])
        linear_extrude(panelThickness)
        circle(d=portDiameter);

        translate([terminal1X, 0, terminalY])
        rotate([-90,0,0])
        linear_extrude(panelThickness)
        circle(d = terminalDiameter);

        translate([terminal2X, 0, terminalY])
        rotate([-90,0,0])
        linear_extrude(panelThickness)
        circle(d = terminalDiameter);
    }

    //Back Panel Joint Connection
    //Added grooves for joint connection with back
    translate([panelThickness/2 - (grooveThickness-1)/2, panelThickness, panelThickness/2 - (grooveThickness-1)/2])
    linear_extrude(grooveDepth - 1)
    square([frontWidth - panelThickness, grooveThickness -1]);

    translate([panelThickness/2 - (grooveThickness-1)/2, panelThickness, height - panelThickness/2 - (grooveThickness-1)/2])
    linear_extrude(grooveDepth - 1)
    square([frontWidth - panelThickness -1 +grooveThickness, grooveThickness - 1]);

    translate([frontWidth - panelThickness/2 - (grooveThickness-1)/2, panelThickness, panelThickness/2 - (grooveThickness-1)/2])
    linear_extrude(height - panelThickness)
    square([grooveThickness - 1, grooveDepth - 1]);

    translate([panelThickness/2 - (grooveThickness-1)/2, panelThickness, panelThickness/2 - (grooveThickness-1)/2])
    linear_extrude(height - panelThickness)
    square([grooveThickness - 1, grooveDepth - 1]);
};
