# Technical Specifications: All-Metal Historical Buckler Shield

---

## Overview

This document details the technical specifications for a custom all-metal buckler shield, drawing inspiration from 13th–16th century European designs (e.g., the *I.33* manuscript and surviving museum artifacts). Optimized for historical reenactment, fencing, or display, the buckler prioritizes maneuverability, durability, and precision manufacturing. It comprises a round face plate with central hollow cutout and a hollow domed boss with flange, fabricated from stainless steel for superior corrosion resistance and impact strength.

The parametric design facilitates on-demand CNC machining, with modular components for straightforward assembly via riveting. **Estimated total weight**: 0.8–1.1 kg. *Units*: millimeters (mm) unless otherwise specified.

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
- **Diameter**: 300 mm (outer edge; ≈12 inches).
- **Thickness**: 2 mm (uniform across components).
- **Central Hollow**: 140 mm diameter cutout aligned with boss base for hand space.

### Face Plate
- **Shape**: Circular disk with central hollow.
- **Outer Diameter**: 300 mm.
- **Central Hollow Diameter**: 140 mm (aligned with boss base).
- **Rivet Holes**: 9 holes (5.2 mm diameter, including 0.2 mm windage), evenly spaced at 40° intervals on a 155 mm radius circle for boss flange attachment.

### Domed Boss
- **Shape**: Hollow hemispherical dome with base flange.
- **Base Diameter**: 140 mm (≈5.5 inches).
- **Height**: 30 mm protrusion from base (total height from face plate: 32 mm).
- **Wall Thickness**: 1.5 mm uniform shell (hollow interior for weight reduction).
- **Flange**: 15 mm wide ring at base for riveting.
- **Rivet Holes**: 9 holes (5.2 mm diameter, including windage), evenly spaced at 40° intervals on a 155 mm radius circle in flange center.
- **Attachment**: Centered in face plate hollow; secured via 9 rivets through flange and face plate.

---

## Tolerances and Fit

- **General Dimensions**: ±0.127 mm (±0.005 inches) for all non-critical features.
- **Critical Features** (e.g., holes, alignments): ±0.051 mm (±0.002 inches) to guarantee riveting precision.
- **Windage**: +0.2 mm incorporated into hole diameters to accommodate manufacturing kerf, thermal expansion, or material shrinkage.
- **Surface Flatness**: ±0.1 mm across face; dome curvature ±0.2 mm from specified radius.
- **Assembly Clearances**: 0.1 mm gaps at rivet interfaces for seamless insertion; 0.5 mm clearance between boss base and face hollow for fit.

---

## Manufacturing Process

- **Primary Method**: 3-axis CNC milling from stainless steel billet or sheet stock (ideal for dome precision).
  - **Face Plate**: Roughing on flat stock, followed by finishing for central hollow and rivet holes.
  - **Boss**: Ball-end milling for hemispherical form and flange; inner hollow via subtraction; defer final chamfering (0.5 mm radius) until post-engraving.
- **Tools**: Flat and ball-nose end mills (1/8–1/4 inch diameters); G-code enforcement of tolerances.
- **Post-Processing**: Edge deburring; surface cleaning with isopropyl alcohol. No heat treatment necessary.
- **Engraving Workflow**: Ship boss directly from manufacturer to engraver (fiber laser on curved surface). Apply manual chamfering (0.5 mm radius) post-engraving to safeguard the design.
- **Quality Assurance**: Visual defect inspection (e.g., warping, cracks); dimensional checks via calipers or CMM; optional test-fit verification.
- **Estimated Time**: 1.5–3 hours total machining across all parts.

---

## Cost Breakdown

*Estimates for a one-off prototype (USA-based on-demand services; current as of September 22, 2025, excluding taxes/shipping surcharges). Sourced from providers like Xometry, Metals Depot, and Amazon. Obtain firm quotes for accuracy.*

| Component                  | Description                                                                 | Estimated Cost (USD) | Notes/Source |
|----------------------------|-----------------------------------------------------------------------------|----------------------|--------------|
| **Materials**             | 304 stainless steel (~1.5 kg total; 2 mm thick sheet/billet)               | $8–$12              | $2–$3/lb; small sheets ~$8–$15 |
| **CNC Machining**         | Face plate (~0.5 hr), boss (~1–1.5 hrs); 3-axis milling                    | $150–$300           | $250–$350/hr for stainless prototypes |
| **Laser Engraving**       | Curved boss surface (fiber laser, custom design)                           | $20–$100            | Varies by design complexity |
| **Fasteners (Rivets)**    | Pack of 10–20 stainless steel 5 mm rivets                                  | $1–$5               | ~$10–$15 for 50-piece pack |
| **Shipping/Logistics**    | Domestic USA (small package; manufacturer → engraver → customer)           | $10–$30             | USPS/UPS ground (~1 lb) |
| **Total Estimated**       | Full prototype (excl. assembly tools/labor)                                | **$189–$447**       | Low end: basic; high end: complex engraving |

*Bulk production reduces machining costs by 20–50%.*

---

## Assembly Solutions

### Primary: Riveting (Recommended for Authenticity)
1. Prepare components (deburr and clean surfaces).
2. Align boss flange with face plate holes; insert 5 mm rivets through all 9 positions and peen/hammer to secure.
3. Verify central alignment and hand space in hollow.
4. Chamfer exposed edges; polish optionally for aesthetics.

**Tools**: Rivet gun/hammer, clamps, safety gloves.  
**Pros**: Durable, period-accurate, reversible.  
**Cons**: Requires basic tools; risk of misalignment without jigs.

### Alternative 1: Welding (Permanent High-Strength Option)
- **Process**: TIG welding (argon-shielded) with ER308L filler rod; tack-weld flange to face plate, then seam fully. Grind for smooth finish.
- **Tools/Supplies**: TIG welder, filler rod, grinding wheel.  
**Cost Add-On**: $40–$80 (professional service).  
**Pros**: Seamless and impact-resistant.  
**Cons**: Irreversible; potential distortion on thin metal.  
**Ideal For**: Combat reenactment or permanent display.

### Alternative 2: Adhesive Bonding (Quick and Non-Invasive)
- **Process**: Apply two-part epoxy (e.g., JB Weld SteelStik) to flange interfaces; clamp for 24-hour cure. Add pilot holes for hybrid strength.
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
- **Customization Options**: Parametric scaling available (e.g., 320 mm diameter for variants).

---

## References and Files

- **CAD Files**: STEP/STP exports from OpenSCAD (separate: face.stp, boss.stp).
- **Historical References**: *I.33* manuscript; 15th-century steel buckler replicas (e.g., Royal Armouries).
- **Version**: 2.0 (September 22, 2025).
- **Contact**: For inquiries or modifications, reach the designer via [email/designer contact].

---
