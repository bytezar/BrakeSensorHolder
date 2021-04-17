include <BrakeSensorHolderVars.scad>

difference()
{
	union()
	{
		cube([brakeHandleWidth,letchHeight/2,length]);
		
		translate([ringHolderOffset,0,0])
		cube([ringOuterDiameter,holderHeight,length]);
		
		translate([brakeHandleWidth/2,holderHeight,0])
		cylinder(d=ringOuterDiameter,h=length,$fn=64);
		
		// Left letch
		translate([-letchWidth,-letchHeight/2,0])
		cube([letchWidth,letchHeight,length]);
		
		translate([ringHolderOffset,letchHeight/2,0])
		cylinder(d=2*(letchWidth+ringHolderOffset),h=length,$fn=32);
		
		// Right letch
		translate([brakeHandleWidth,-letchHeight/2,0])
		cube([letchWidth,letchHeight,length]);
		
		translate([brakeHandleWidth-ringHolderOffset,letchHeight/2,0])
		cylinder(d=2*(letchWidth+ringHolderOffset),h=length,$fn=32);
	}
	
	translate([brakeHandleWidth/2,holderHeight,-1])
	cylinder(d=ringInnerDiameter,h=length+2,$fn=64);
	
	translate([-letchWidth-1,zipTieHoleOffset,(length-zipTieWidth)/2])
	cube([2*letchWidth+brakeHandleWidth+2,zipTieThickness,zipTieWidth]);
}