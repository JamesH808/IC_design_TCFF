Topologically Compressed Flip-Flop Design
This repository contains the schematic and layout design of a Topologically Compressed Flip-Flop, based on the IEEE paper:

"A Fully Static Topologically-Compressed 21-Transistor Flip-Flop With 75% Power Saving"
H. Kawai, IEEE Journal of Solid-State Circuits (JSSC), 2014

📘 Project Overview
This was the final project for CENG 465: Integrated Circuit Design, where the goal was to implement a high-efficiency flip-flop using industry-standard tools and methodologies. The project followed a complete custom IC design flow from schematic to post-layout simulation.

🛠 Tools and Technologies
Cadence Virtuoso – for schematic capture and full-custom layout creation

Synopsys HSPICE – for circuit simulation and waveform verification

Siemens Calibre – for layout verification:

DRC (Design Rule Check)

LVS (Layout Versus Schematic)

PEX (Parasitic Extraction)

📐 Design Flow
Schematic Design
Flip-flop architecture was derived from the IEEE paper and implemented in Cadence Virtuoso.

Layout Design
Custom layout was created using standard cells and layout guidelines for a 45 nm process.

Verification

DRC and LVS were performed in Calibre to validate layout correctness and connectivity.

PEX was used to extract parasitic components from the layout for accurate post-layout simulation.

Simulation

Pre- and post-layout simulations were run using HSPICE.

Functionality was verified through waveform analysis.

Power consumption was measured across multiple process corners with the following conditions:

1 GHz clock frequency

1.0 V supply voltage

10% switching activity

45 nm technology node

📊 Results
Successfully reproduced the topologically compressed flip-flop architecture.

Verified functionality through simulation.

Measured power consumption confirming the expected power-saving behavior.

📁 Repository Contents
/schematic/ – Cadence schematic files

/layout/ – GDSII or Virtuoso layout views

/simulation/ – HSPICE netlists and waveform outputs

/verification/ – Calibre DRC/LVS/PEX reports

📄 References
Kawai, H. (2014). A Fully Static Topologically-Compressed 21-Transistor Flip-Flop With 75% Power Saving. IEEE Journal of Solid-State Circuits (JSSC), 49(9), 2011–2020.
