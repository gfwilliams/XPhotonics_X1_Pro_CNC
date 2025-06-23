T = 4;//upright thickness
ST = 4; // side thickness
SW = T+18; // side width
H = 45; // upright height
$fn=20;
CUTLH=12+15; // cutout left actual=12
CUTRLH=9+15; // cutout right actual=9
TORCHW=36.5; // torch width

// slot in part
difference() {
    union() {
        translate([0,-4.5,0]) {
            cube([32,9,70], center=true);
            translate([0,0,35+5])cube([36,9,10], center=true); // top sticky-out bit
        }
        translate([0,T/2,H/2]) cube([TORCHW+ST*2,T,H], center=true); // upright
        translate([(ST/2)+(TORCHW/2),SW/2,H/2]) cube([ST,SW,H], center=true); // sides
        translate([-(ST/2)-(TORCHW/2),SW/2,H/2]) cube([ST,SW,H], center=true); // sides
        translate([0,SW/2,-2.5]) cube([TORCHW+ST*2,SW,5], center=true); // bottom plate
        translate([0,20,-2.5]) cylinder(h=5,center=true,r = (TORCHW+ST*2)/2); // bottom plate
    }
   union() {
      translate([0,T+3+27/2,-1]) cylinder(r=30/2,h=10,center=true); // hole
      translate([-18,20,CUTRLH/2]) cube([20,20,CUTRLH], center=true); // cutout for wire clip
      translate([18,20,10+(CUTLH/2)]) cube([20,20,CUTLH], center=true); // cutout for lens screws
      translate([0,-3,H-5]) rotate([0,90,0]) cylinder(r=3,h=100,center=true); // hole
      translate([17,-4.5,0]) cylinder(r=2,h=70,center=true); // slot
      translate([-17,-4.5,0]) cylinder(r=2,h=70,center=true); // slot
   }
}


