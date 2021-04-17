include <BrakeSensorHolderVars.scad>

union()
{
	cylinder(d=ringOuterDiameter,h=cylinderHeadHeight,$fn=64);
	
	cylinder(d=innerCylinderDiameter,h=cylinderHeadHeight+ringHeight+length,$fn=32);
}