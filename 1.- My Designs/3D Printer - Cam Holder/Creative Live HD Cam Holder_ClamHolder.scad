/*
Smodule clamp (){
    difference(){
        cube([20,20,20]);
        translate([0, 0, 5]){
            cube([15,20,10]);
        }
        translate([0, 0, 10]){
            cube([5,20,10]);
        }
    }
}

module axis(){
    union(){
        cube([150,5,5]);
        translate([145,0,0]){
            cube([5,5,20]);
        }
    }
}

*/
module camHolder(){
    difference(){
        union(){
            cube([35,39,7]);
            translate([13.5,15.5,-8]){
                cube([8.5,8.5, 10]);
            }
            //Triangle for avoiding support
            difference(){
                translate([5.5,15.5,-8]){
                    cube([8.5,8.5, 10]);
                }
                rotate([0,45,0]){
                    translate([2.5,15.5,-7.5]){
                        cube([17,8.5, 11.3]);
                    }
                }
            }
        }
        translate([0,2.5,2]){
            cube([35,34, 3]);
        }
        translate([15,17,-8]){
            cube([5.5,5.5, 10]);
        }
    }
}
/*
union(){
    clamp();
    translate([20,7.5,0]){
        axis();
    }
    translate([149.75,-9.75,21]){
*/
        camHolder();
/*
    }
    
}
*/