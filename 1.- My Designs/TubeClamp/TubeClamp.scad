insideDiameter = 41;
thickness = 1.5;
height= 11;

screwHoldersLong = 8;
clampBlankSpace = thickness*3;
screwDiameter = 3;


$fn=100;
difference(){
    union(){
        difference(){
            cylinder(h=height, d=insideDiameter+thickness*2, center=true);
            cylinder(h=height, d=insideDiameter, center=true);
            translate([insideDiameter/2+0.5,0,0]){
                cube([thickness*2,thickness*2,height], center=true);
            }
        }
        translate([insideDiameter/2+screwHoldersLong/2,clampBlankSpace/2,0]){
            cube([screwHoldersLong,thickness,height], center=true);
        }
        translate([insideDiameter/2+screwHoldersLong/2,-clampBlankSpace/2,0]){
            cube([screwHoldersLong,thickness,height], center=true);
        }
    }

    translate([(insideDiameter+thickness+screwHoldersLong)/2,0,0]){
        rotate([90,0,0])cylinder(h=clampBlankSpace+thickness*2, d=screwDiameter, center=true);
    }
}