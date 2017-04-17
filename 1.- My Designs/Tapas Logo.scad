cloudThick = 4;
cloudHeight = 8;
cloudLong = 16;
textThick = 2;
textSize = 4;
logoText = "TAP4S";

difference(){
    union(){
        cube([cloudHeight,cloudLong,cloudThick], center= true);
        translate([0,-cloudLong/2, 0]){
            cylinder(h=cloudThick,d=cloudHeight,center = true, $fn=50);
        }
        translate([-cloudHeight*0.3,-cloudLong/10, 0]){
            cylinder(h=cloudThick,d=cloudHeight*1.8,center = true, $fn=100);
        }
        translate([-cloudHeight*0.3,cloudLong/3, 0]){
            cylinder(h=cloudThick,d=cloudHeight,center = true, $fn=50);
        }
        translate([cloudHeight*0.1,cloudLong/2, 0]){
            cylinder(h=cloudThick,d=cloudHeight*0.8,center = true, $fn=50);
        }
    }
    translate([cloudHeight,0,0]){
        cube([cloudHeight,cloudLong,cloudThick*2], center= true);
    }
    rotate([0,0,90]){
        translate([-cloudLong/1.8,-cloudHeight/4,cloudThick/2-textThick/2]){
            linear_extrude(height = textThick){
                text(logoText, size = textSize, $fn=50);
            }
        }
    }
}

stickDiameter = 70;
stickThick = cloudThick/4;
intersection(){
    translate([-34,-16,0]){
        cylinder(h=stickThick,d=stickDiameter,center = true, $fn=100);
    }
    translate([stickDiameter/1.4-34,stickDiameter/1.5-16,0]){
        cylinder(h=stickThick,d=stickDiameter,center = true, $fn=100);
    }
}

