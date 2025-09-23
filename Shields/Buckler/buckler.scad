// Simple Historical Buckler Shield - All-Metal (Production-Ready Version)
// Units: mm; Optimized for CNC manufacturing and fast rendering
// GPLv3 Licensed - See technical specs for details
// Key Optimizations: No minkowski() for chamfers (apply post-machining); $fn=50 for balance between smoothness and speed
// Production Notes: Export as STEP/STP for CNC (via OpenSCAD or converters); Use 304 stainless steel, 2mm thick
// Verify manifold geometry: Use OpenSCAD's "Thrown Together" view; Ensure no self-intersections
// Corrections: Boss now a proper spherical cap with calculated radius for base diameter and height; solid for simplicity and manifold integrity
// No hollow to avoid non-manifold issues; flattening uses large half-space subtraction for clean cut
// Improvements: Grip bar now with 4 finger grooves (cylindrical subtractions with rounded ends via hull for comfort and manifold); face plate dished slightly more for historical accuracy (based on 13th-16th century examples, 6-18 inch diameter, steel construction with bar grip)
// Manifold Fixes: Small overlaps in unions (e.g., rim translated -0.01 for coincidence avoidance); indent h exact with small buffer; oversized subtractions
// Historical Accuracy: Adjusted diameter to 300mm (common 11-14" range); boss with flange and 9 rivet holes for attachment (typical 13th-16th century riveting with multiple rivets); matching holes in face; grip with grooves for finger placement (inspired by historical comfort features)
// Grip Replacement: Removed handle/grip entirely as per instruction
// Boss Update: Flange with 9 rivet holes evenly spaced at 40 deg intervals, placed in the center of the flange width for strength (radius = inner + width/2)
// Face Update: Hollow circle under grip aligned with boss; 9 rivet holes positioned for optimal load distribution
// Dome Update: Removed inner dome subtraction to eliminate any hole on boss dome (fully solid dome)
// Dome Update: Re-added inner dome subtraction to make dome hollow (uniform wall thickness)
// Face Update: Increased hollow circle diameter to open up more space (now = boss base diameter for full alignment and hand space)

// Layout Mode: "Show" for assembled preview, "Build" for separated export layout
Layout = "Show";  // ["Show", "Build"]

// Global Parameters (Expanded for Production Customization)
FaceDiameter = 300;           // Outer diameter of face plate (~12 inches, common historical size 11-14")
FaceThickness = 2;            // Uniform thickness (14-16 gauge equivalent)
BossBaseDiameter = 140;       // Boss dome base diameter (~5.5 inches)
BossFlangeWidth = 15;         // Flange width for rivet attachment (historical riveting method)
BossHeight = 30;              // Boss protrusion height above face
BossWallThickness = 1.5;      // Wall thickness for hollow dome (uniform, less than total thickness for strength)
RivetHoleDiameter = 5;        // Base rivet hole size
HoleWindage = 0.2;            // Manufacturing tolerance for holes (kerf/expansion)
RivetHoleDepthBuffer = HoleWindage * 2;  // Buffer for through-hole cuts to ensure clean penetration
BossRivetRadius = (BossBaseDiameter / 2) + (BossFlangeWidth / 2);  // Center of flange width (inner radius + half width)
HollowCircleDiameter = BossBaseDiameter;  // Diameter of hollow cutout under grip (aligned with boss base for full space)
Epsilon = 0.01;               // Small buffer for manifold overlaps and clean subtractions
PartSpacing = 200;            // Increased spacing between parts in Build mode for safe export (avoids overlap)

// Global Resolution (Balanced for Production Previews and Exports)
$fn = 50;                     // Facets for curves; Increase to 100+ for final high-res exports if needed; Lower for faster previews

// Module: Face Plate (Round Piece with Hollow Circle Cutout Under Grip Aligning with Boss, and Rivet Holes)
module FacePlate() {
    difference() {
        // Main round face plate
        cylinder(h = FaceThickness, d = FaceDiameter, center = true);
        
        // Hollow circle cutout under grip, aligned with boss center (enlarged for space)
        cylinder(h = FaceThickness + Epsilon * 2, d = HollowCircleDiameter, center = true);
        
        // Boss attachment rivet holes (9 evenly spaced at 40 deg intervals for strength)
        for (i = [0:8]) {
            a = i * 40;
            rotate([0, 0, a])
                translate([BossRivetRadius, 0, 0])
                    cylinder(h = FaceThickness + RivetHoleDepthBuffer, d = RivetHoleDiameter + HoleWindage, center = true);
        }
    }
}

// Module: Domed Boss (Spherical Cap with Flange for Rivet Attachment - Hollow Dome)
module Boss() {
    // Calculate sphere radius for correct cap geometry (base diameter and height)
    BossRadius = (pow(BossBaseDiameter / 2, 2) + pow(BossHeight, 2)) / (2 * BossHeight);
    BossCenterZ = BossHeight - BossRadius;  // Negative offset for base at z=0
    
    translate([0, 0, FaceThickness / 2]) {
        difference() {
            union() {
                // Outer sphere positioned for cap
                translate([0, 0, BossCenterZ])
                    sphere(r = BossRadius);
                
                // Flange for rivet attachment (thin ring at base)
                cylinder(h = FaceThickness, d = BossBaseDiameter + BossFlangeWidth * 2, center = false);
            }
            
            // Flatten bottom with oversized half-space subtraction (covers all below z=0 + buffer)
            translate([0, 0, -BossHeight - 100 - Epsilon])  
                cube([BossBaseDiameter * 2 + BossFlangeWidth * 2 + 20, BossBaseDiameter * 2 + BossFlangeWidth * 2 + 20, BossHeight * 2 + 200], center = true);  // Oversized for clean manifold cut
            
            // Inner dome subtraction for hollow (uniform wall thickness)
            translate([0, 0, BossCenterZ])
                sphere(r = BossRadius - BossWallThickness);
            
            // Rivet holes in flange (9 evenly spaced at 40 deg intervals, placed in center of flange width)
            for (i = [0:8]) {
                a = i * 40;
                rotate([0, 0, a])
                    translate([BossRivetRadius, 0, 0])
                        cylinder(h = FaceThickness + RivetHoleDepthBuffer, d = RivetHoleDiameter + HoleWindage, center = false);
            }
        }
    }
}

// Assembly and Export Logic
if (Layout == "Show") {
    // Assembled View for Preview (Implicit union; ensure slight overlaps if needed for STL)
    FacePlate();
    Boss();
}

if (Layout == "Build") {
    // Separated Parts for Export (Spaced for STL/STEP; Flat Orientations for Stability)
    // Face Plate (Flipped for stable build plate, spaced left)
    translate([-FaceDiameter / 2 - PartSpacing, 0, FaceThickness / 2])
        rotate([0, 180, 0])
            FacePlate();
    
    // Boss (Flattened Base Down, spaced up)
    translate([0, FaceDiameter / 2 + PartSpacing, 0])  // Base at z=0
        Boss();
}