# Rapid Sequencing (SQK-RAD004) Guide Sheet

1. Input DNA Quality Control

[ ] Fill a large foam container with ice.

[ ] Fetch the size-selected DNA from inside a white foam container inside the lab refridgerator and place the tube on ice.

[ ] If this is the first time using this DNA sample or the sample has been stored for a long period, you may want to check the quality of the input DNA using the Nanodrop. ONT recommends the following quality criteria:
    - OD 260/280 of 1.8 and OD 260/230 of 2.0-2.2
    - Concentration > 53.3 ng/uL (to be able to achieve 400 ng total in 7.5 uL)

2. Check the flow cell quality

[ ] Record today's date, the sample name, the run number, and your name at the top of this sheet.

[ ] Check that the computer has at 500 GB of free space (not counting any connected external drives).

[ ] Fetch the flow cell from the lab refridgerator and record the flow cell type (FLO-MIN106 or FLO-MIN107).
    - Flow cell type: _______________

[ ] Plug the MinION into the computer.

[ ] Insert the flow cell into the MinION.

[ ] Start MinKNOW, select the flowcell, and change the flow cell type to match the flow cell being used.

[ ] Click "Check flow cells" at the bottom of the screen. Then click "Start test"

[ ] Continue to library preparation while the test is running. When the test completes, make sure that the active pore count is > 800.
    - Number of active pores: _______________

3. Library preparation

[ ] Thaw each of the following reagents, briefly spin down in the centrifuge, then immediately store on ice.
    - FRA (brown)
    - RAP (green)
    - SQB (red)
    - LB (pink)
    - FB (blue) - use only one vial
    - FLT (purple stiped)

[ ] Sanitize a pair of lab scissors using ethanol, then cut the tip off of a 10 mL (red) pipette tip.

[ ] Add 7.5 uL of sample DNA to a 0.2 mL thin-walled PCR tube using the cut pipette. Place the DNA sample tube back on ice.

[ ] With a new (red) pipette tip, mix the vial of FRA by pipetting up and down.

[ ] Add 2.5 uL of FRA to the PCR tube with DNA. Place the vial of FRA back on ice.

[ ] Gently mix the PCR tube by flicking, then spin down.

[ ] Incubate the tube at 30° C for 1 minute and then at 80° C for 1 minute. Briefly put the tube on ice to cool it down.

4. Adapter attachment

[ ] Using a (red) pipette tip, mix the vial of RAP by pipetting up and down.

[ ] Add 1 uL of RAP to the PCR tube. Place the RAP vial back on ice.

[ ] Gently mix the PCR tube by flicking, then spin down.

[ ] Wait 13 minutes at room temperature, then store the PCR tube on ice.

5. Priming the flow cell

[ ] Vortex the SQB and FB tubes, spin down, and return them to ice.

[ ] Open the priming port (not the SpotON sample port).

[ ] Set a 1000 uL pipette to 200 uL and insert the tip into the priming port.

[ ] Increase the pipette volume until you can see a small volume of buffer entering the pipette tip.

[ ] Visually check that there is continuous buffer from the priming port across the sensor array.

[ ] Use a (green) pipette tip to mix the FLT tube by pipetting up and down.

[ ] Add 30 uL of FLT directly to the tube of FB and mix by pipetting up and down. Return the tube of FLT to ice.

[ ] Load 800 µl of this mix into the flow cell via the priming port, avoiding the introduction of air bubbles.

[ ] Wait 5 minutes.

6. Loading the flow cell

[ ] Find a LoBind microfuge tube.

[ ] Using a (green) pipette tip, mix the vial of SQB by pipetting up and down. 

[ ] Add 34 uL of SQB to the LoBind tube, then return the SQB to ice.

[ ] Vortex the LB tube, then immediately add 25.5 uL of LB to the LoBind tube. Return the LB tube to ice.

[ ] Add 4.5 uL of nuclease-free water to the LoBind tube.

[ ] Sanitize a pair of lab scissors using ethanol, then cut the tip off of a 100 mL (green) pipette tip.

[ ] Using the cut pipette tip, add all (11 uL) of the DNA library (PCR tube) to the LoBind tube.

[ ] Open the SpotON port. You will have to break the seal.

[ ] Load 200 µl of the priming mix (from step 5) into the flow cell via the priming port (not the SpotON sample port), avoiding the introduction
of air bubbles.

[ ] Sanitize a pair of lab scissors using ethanol, then cut the tip off of a 100 mL (green) pipette tip.

[ ] Using the cut pipette tip, mix the prepared library gently by pipetting up and down just prior to loading.

[ ] Add all (75 uL) of sample to the flow cell via the SpotON sample port in a dropwise fashion. Ensure each drop flows into the port
before adding the next.

[ ] Gently replace the SpotON sample port cover, making sure the bung enters the SpotON port, close the priming port and
replace the MinION lid.

7. Start the MinKNOW software

[ ] Click the "New Experiment" button at the bottom left of the GUI.

[ ] Follow the convention "YYYYMMDD_SampleName_RunNumber" for both the experiment name and the sample name.
    - Example: 20190403_MorexSample2_Run3

[ ] Select SQK-RAD004 as the sequencing kit.

[ ] Disable basecalling. Leave all other settings as the defaults.

[ ] Start the run.

[ ] Start the program "Amphetamine" and set the duration to "Indefinite" to keep the machine awake.

[ ] Place all reagents back in the freezer. Place the DNA sample back in the refridgerator.

[ ] Stick around for 10-15 minutes to make sure that reads are being collected.
