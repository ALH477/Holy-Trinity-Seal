# Technical Specifications: All-Metal Historical Buckler Shield

---

## Overview

This document details the technical specifications for a custom all-metal buckler shield, drawing inspiration from 13th–16th century European designs (e.g., the *I.33* manuscript and surviving museum artifacts). Optimized for historical reenactment, fencing, or display, the buckler prioritizes maneuverability, durability, and precision manufacturing. It comprises a convex round face, central domed boss, and rear fist-grip bar, all fabricated from stainless steel for superior corrosion resistance and impact strength.

The parametric design facilitates on-demand CNC machining, with modular components for straightforward assembly via riveting. **Estimated total weight**: 1–1.3 kg. *Units*: millimeters (mm) unless otherwise specified.

---

## Materials

- **Primary Material**: 304 stainless steel (austenitic grade, offering high strength, machinability, and corrosion resistance).  
  *Alternative*: 316 stainless steel for enhanced performance in marine or humid environments.
- **Thickness**: Uniform 2 mm (equivalent to 14–16 gauge sheet metal) across all components, balancing weight and deflection resistance.
- **Fasteners**: 5 mm diameter stainless steel rivets (sourced separately; not included in manufacturing).
- **Surface Finish**: Machined to Ra 32–63 microinches (smooth finish); all edges deburred for user safety. No coatings or anodizing applied.

---

## Dimensions

### Overall Shield
- **Diameter**: 280 mm (outer edge, including rim; ≈11 inches).
- **Thickness**: 2 mm (uniform across components).
- **Convexity**: Subtle outward dome with 500 mm radius (center ≈1–2 mm higher than edges for enhanced structural integrity).

### Shield Face
- **Shape**: Circular disk with integrated rolled perimeter rim.
- **Base Diameter**: 276 mm (excluding rim).
- **Rim**: Toroidal profile with 2 mm radius, providing edge protection and striking capability.
- **Rivet Holes**: Two holes (5.2 mm diameter, including 0.2 mm windage), positioned ±60 mm from center along the horizontal (X-) axis for grip alignment.

### Domed Boss
- **Shape**: Hemispherical dome with flattened base for attachment.
- **Base Diameter**: 140 mm (≈5.5 inches).
- **Height**: 30 mm protrusion from base (total height from shield face: 32 mm).
- **Wall Thickness**: 2 mm uniform shell (hollow interior optional to minimize weight when machined from billet).
- **Attachment**: Centered on shield face; secured via riveting or welding.

### Grip Bar
- **Shape**: Cylindrical bar with flattened tabs at each end.
- **Overall Length**: 120 mm (≈4.7 inches).
- **Bar Diameter**: 20 mm (cylindrical section).
- **Tab Dimensions**: 10 mm (length) × 20 mm (width) × 2 mm (thickness) per end.
- **Rivet Holes**: One per tab (5.2 mm diameter, including windage), centered for precise alignment.
- **Positioning**: Centered behind boss, oriented perpendicular to face (90° rotation along Y-axis).

---

## Tolerances and Fit

- **General Dimensions**: ±0.127 mm (±0.005 inches) for all non-critical features.
- **Critical Features** (e.g., holes, alignments): ±0.051 mm (±0.002 inches) to guarantee riveting precision.
- **Windage**: +0.2 mm incorporated into hole diameters to accommodate manufacturing kerf, thermal expansion, or material shrinkage.
- **Surface Flatness**: ±0.1 mm across face; dome curvature ±0.2 mm from specified radius.
- **Assembly Clearances**: 0.1 mm gaps at rivet interfaces for seamless insertion.

---

## Manufacturing Process

- **Primary Method**: 3-axis CNC milling from stainless steel billet or sheet stock (ideal for convex precision).
  - **Shield Face**: Roughing on flat stock, followed by ball-end mill finishing for convexity and toroidal rim.
  - **Boss**: Ball-end milling for hemispherical form; defer final chamfering (0.5 mm radius) until post-engraving.
  - **Grip Bar**: CNC turning for cylindrical body, with subsequent milling for tabs and holes.
- **Tools**: Flat and ball-nose end mills (1/8–1/4 inch diameters); G-code enforcement of tolerances.
- **Post-Processing**: Edge deburring; surface cleaning with isopropyl alcohol. No heat treatment necessary.
- **Engraving Workflow**: Ship boss directly from manufacturer to engraver (fiber laser on curved surface). Apply manual chamfering (0.5 mm radius) post-engraving to safeguard the design.
- **Quality Assurance**: Visual defect inspection (e.g., warping, cracks); dimensional checks via calipers or CMM; optional test-fit verification.
- **Estimated Time**: 2–4 hours total machining across all parts.

---

## Cost Breakdown

*Estimates for a one-off prototype (USA-based on-demand services; current as of September 2025, excluding taxes/shipping surcharges). Sourced from providers like Xometry, Metals Depot, and Amazon. Obtain firm quotes for accuracy.*

| Component                  | Description                                                                 | Estimated Cost (USD) | Notes/Source |
|----------------------------|-----------------------------------------------------------------------------|----------------------|--------------|
| **Materials**             | 304 stainless steel (~2 kg total; 2 mm thick sheet/billet)                 | $10–$15             | $2–$3/lb; small sheets ~$10–$20 |
| **CNC Machining**         | Shield face (~1 hr), boss (~1–2 hrs), grip bar (~0.5 hr); 3-axis milling   | $200–$400           | $250–$350/hr for stainless prototypes |
| **Laser Engraving**       | Curved boss surface (fiber laser, custom design)                           | $20–$100            | Varies by design complexity |
| **Fasteners (Rivets)**    | Pack of 10–20 stainless steel 5 mm rivets                                  | $1–$5               | ~$10–$15 for 50-piece pack |
| **Shipping/Logistics**    | Domestic USA (small package; manufacturer → engraver → customer)           | $10–$30             | USPS/UPS ground (~1–2 lb) |
| **Total Estimated**       | Full prototype (excl. assembly tools/labor)                                | **$241–$550**       | Low end: basic; high end: complex engraving |

*Bulk production reduces machining costs by 20–50%.*

---

## Assembly Solutions

### Primary: Riveting (Recommended for Authenticity)
1. Prepare components (deburr and clean surfaces).
2. Align grip bar tabs with shield face holes; insert 5 mm rivets and peen/hammer to secure.
3. Center and attach boss to face (post-engraving) via welding or supplemental rivets.
4. Chamfer exposed edges; polish optionally for aesthetics.

**Tools**: Rivet gun/hammer, clamps, safety gloves.  
**Pros**: Durable, period-accurate, reversible.  
**Cons**: Requires basic tools; risk of misalignment without jigs.

### Alternative 1: Welding (Permanent High-Strength Option)
- **Process**: TIG welding (argon-shielded) with ER308L filler rod; tack-weld tabs/base, then seam fully. Grind for smooth finish.
- **Tools/Supplies**: TIG welder, filler rod, grinding wheel.  
**Cost Add-On**: $50–$100 (professional service).  
**Pros**: Seamless and impact-resistant.  
**Cons**: Irreversible; potential distortion on thin metal.  
**Ideal For**: Combat reenactment or permanent display.

### Alternative 2: Adhesive Bonding (Quick and Non-Invasive)
- **Process**: Apply two-part epoxy (e.g., JB Weld SteelStik) to joints; clamp for 24-hour cure. Add pilot holes for hybrid strength.
- **Tools/Supplies**: Epoxy (~$10/tube), clamps.  
**Cost Add-On**: $5–$15.  
**Pros**: Tool-free, easily reversible.  
**Cons**: Lower impact resistance; non-historical.  
**Ideal For**: Prototyping or lightweight use.

### Alternative 3: Bolting (Modular and Repairable)
- **Process**: Convert rivet holes to M5 threads; secure with stainless bolts/nuts (M5 × 10 mm).
- **Tools/Supplies**: Bolts/nuts (~$5/pack), wrench.  
**Cost Add-On**: $5–$10.  
**Pros**: Disassemblable for maintenance.  
**Cons**: Increased weight; visible fasteners.  
**Ideal For**: Frequent transport or iterative designs.

---

## Performance and Safety

- **Load Capacity**: Suitable for light impacts (e.g., fencing); test for heavy use.
- **Weight Distribution**: Balanced for one-handed operation; center of mass at boss.
- **Safety Considerations**: Chamfered edges throughout; mandatory protective gear during handling/use.
- **Customization Options**: Parametric scaling available (e.g., 300 mm diameter for variants).

---

## References and Files

- **CAD Files**: STEP/STP exports from OpenSCAD (separate: face.stp, boss.stp, grip.stp).
- **Historical References**: *I.33* manuscript; 15th-century steel buckler replicas (e.g., Royal Armouries).
- **Version**: 1.1 (September 22, 2025).
- **Contact**: For inquiries or modifications, reach the designer via [email/designer contact].

---