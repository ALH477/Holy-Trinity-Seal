// Simple Historical Buckler Shield - All-Metal (Production-Ready)
// Units: mm; Optimized for CNC; Use 304 stainless steel, 2mm thick
// GPLv3 Licensed
// Export as STEP/STP for CNC

Layout = "Show";  // ["Show", "Build"]

FaceDiameter = 300;
FaceThickness = 2;
BossBaseDiameter = 140;
BossFlangeWidth = 15;
BossHeight = 30;
BossWallThickness = 1.5;
RivetHoleDiameter = 5;
HoleWindage = 0.2;
RivetHoleDepthBuffer = HoleWindage * 2;
BossRivetRadius = (BossBaseDiameter / 2) + (BossFlangeWidth / 2);
HollowCircleDiameter = BossBaseDiameter;
Epsilon = 0.01;
PartSpacing = 200;

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

module Boss() {
    BossRadius = (pow(BossBaseDiameter / 2, 2) + pow(BossHeight, 2)) / (2 * BossHeight);
    BossCenterZ = BossHeight - BossRadius;
    
    translate([0, 0, FaceThickness / 2]) {
        difference() {
            union() {
                translate([0, 0, BossCenterZ])
                    sphere(r = BossRadius);
                
                cylinder(h = FaceThickness, d = BossBaseDiameter + BossFlangeWidth * 2, center = false);
            }
            
            translate([0, 0, -BossHeight - 100 - Epsilon])
                cube([BossBaseDiameter * 2 + BossFlangeWidth * 2 + 20, BossBaseDiameter * 2 + BossFlangeWidth * 2 + 20, BossHeight * 2 + 200], center = true);
            
            translate([0, 0, BossCenterZ])
                sphere(r = BossRadius - BossWallThickness);
            
            for (i = [0:8]) {
                a = i * 40;
                rotate([0, 0, a])
                    translate([BossRivetRadius, 0, 0])
                        cylinder(h = FaceThickness + RivetHoleDepthBuffer, d = RivetHoleDiameter + HoleWindage, center = false);
            }
        }
    }
}

if (Layout == "Show") {
    FacePlate();
    Boss();
}

if (Layout == "Build") {
    translate([-FaceDiameter / 2 - PartSpacing, 0, FaceThickness / 2])
        rotate([0, 180, 0])
            FacePlate();
    
    translate([0, FaceDiameter / 2 + PartSpacing, 0])
        Boss();
}
