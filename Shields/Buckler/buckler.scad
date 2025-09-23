// Simple Historical Buckler Shield - All-Metal
// Based on 13th-16th century European specs (e.g., I.33 manuscript, museum examples)
// Units: mm
// Improved for manufacturing: tolerances, smooth geometry, modular parts

// Layout Mode: "Show" for assembled view, "Build" for separated parts export
Layout = "Show";  // ["Show", "Build"]

// Global Parameters (Parametric for Customization)
ShieldDiameter = 280;      // ~11 inches, common for fencing bucklers
ShieldThickness = 2;       // ~14-16 gauge steel
BossDiameter = 140;        // ~5.5 inches, central dome
BossHeight = 30;           // Dome height for hand space and deflection
RimRadius = 2;             // Rolled rim radius for edge safety
GripLength = 120;          // ~4.7 inches, fist grip bar
GripDiameter = 20;         // Comfortable round bar diameter
GripTabSize = [10, 20, ShieldThickness];  // [length, width, thickness] for flattened ends
ConvexRadius = 500;        // Large radius for subtle outward convexity (smaller = more dome)
RivetHoleDiameter = 5;     // Base rivet hole size
HoleWindage = 0.2;         // Tolerance for manufacturing (kerf/shrinkage adjustment)
ChamferRadius = 0.5;       // Small chamfer for edge safety (minkowski sphere radius)

// Global Resolution for Smooth CNC Paths
$fn = 100;                 // High for circles/spheres; adjust lower if render slow

// Module: Convex Shield Face with Rim and Rivet Holes
module ConvexShieldFace() {
    difference() {
        minkowski() {      // Optional chamfer: comment out if render too slow
            union() {
                // Convex base (intersection with sphere for dome)
                intersection() {
                    translate([0, 0, -ConvexRadius + ShieldThickness / 2])
                        sphere(r = ConvexRadius);
                    cylinder(h = ShieldThickness, d = ShieldDiameter, center = true);
                }
                // Rolled rim (torus)
                translate([0, 0, ShieldThickness / 2])
                    rotate_extrude()
                        translate([ShieldDiameter / 2, 0, 0])
                            circle(r = RimRadius);
            }
            sphere(r = ChamferRadius);  // Chamfer all edges
        }
        
        // Rivet holes for grip attachment (positioned relative to grip)
        for (x = [-GripLength / 2, GripLength / 2]) {
            translate([x, 0, 0])
                cylinder(h = ShieldThickness + HoleWindage * 2, d = RivetHoleDiameter + HoleWindage, center = true);
        }
    }
}

// Module: Domed Boss (Hemispherical)
module Boss() {
    translate([0, 0, ShieldThickness / 2])
        minkowski() {  // Optional chamfer
            difference() {
                sphere(d = BossDiameter);
                translate([0, 0, -BossHeight])
                    cube([BossDiameter * 2, BossDiameter * 2, BossHeight * 2], center = true);  // Flatten bottom
            }
            sphere(r = ChamferRadius);
        }
}

// Module: Grip Bar with Flattened Tabs and Rivet Holes
module GripBar() {
    union() {
        // Main cylindrical bar
        translate([0, 0, -ShieldThickness / 2 - GripDiameter / 2 - ChamferRadius])
            rotate([0, 90, 0])
                cylinder(h = GripLength - GripTabSize.x * 2, d = GripDiameter, center = true);
        
        // Flattened tabs at ends for riveting
        for (x = [-1, 1]) {
            translate([x * (GripLength / 2 - GripTabSize.x / 2), 0, -ShieldThickness / 2 - ChamferRadius])
                difference() {
                    cube(GripTabSize, center = true);
                    // Rivet hole in tab (matches face holes)
                    cylinder(h = GripTabSize.z + HoleWindage * 2, d = RivetHoleDiameter + HoleWindage, center = true);
                }
        }
    }
}

// Assembly: Show Mode (Combined View)
if (Layout == "Show") {
    ConvexShieldFace();
    Boss();
    GripBar();
}

// Build Mode: Separated Parts for Export (Spaced for CNC/Print Layout)
if (Layout == "Build") {
    // Face
    translate([-ShieldDiameter / 2 - 10, 0, ShieldThickness / 2])
        rotate([0, 180, 0])  // Flat for build plate
            ConvexShieldFace();
    
    // Boss (flattened)
    translate([0, ShieldDiameter / 2 + 10, BossHeight / 2])
        rotate([180, 0, 0])
            Boss();
    
    // Grip Bar
    translate([ShieldDiameter / 2 + 10, 0, GripTabSize.z / 2])
        GripBar();
}