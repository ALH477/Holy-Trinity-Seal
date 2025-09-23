// Face Plate - All-Metal Buckler Shield Component
// Units: mm; Optimized for CNC; Use 304 stainless steel, 2mm thick
// GPLv3 Licensed

FaceDiameter = 300;
FaceThickness = 2;
RivetHoleDiameter = 5;
HoleWindage = 0.2;
RivetHoleDepthBuffer = HoleWindage * 2;
BossRivetRadius = 85;  // Adjusted for flange center (140/2 + 15/2 = 75; +10 inset = 85 for strength)
HollowCircleDiameter = 140;  // Aligned with boss base
Epsilon = 0.01;

$fn = 50;

module FacePlate() {
    difference() {
        cylinder(h = FaceThickness, d = FaceDiameter, center = true);
        
        cylinder(h = FaceThickness + Epsilon * 2, d = HollowCircleDiameter, center = true);
        
        for (i = [0:8]) {
            a = i * 40;
            rotate([0, 0, a])
                translate([BossRivetRadius, 0, 0])
                    cylinder(h = FaceThickness + RivetHoleDepthBuffer, d = RivetHoleDiameter + HoleWindage, center = true);
        }
    }
}

FacePlate();  // Render the part
