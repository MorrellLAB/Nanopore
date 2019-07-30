# Rapid Sequencing (SQK-RAD004) Guide Sheet

To print this document, navigate to:
[https://gitprint.com/MorrellLAB/Nanopore/blob/master/SQK-RAD004/SQK-RAD004-protocol.md](https://gitprint.com/MorrellLAB/Nanopore/blob/master/SQK-RAD004/SQK-RAD004-protocol.md)

### Input DNA Quality Control

- [ ] Fill a large foam container with ice.

- [ ] Put on a pair of lab gloves.

- [ ] Fetch the size-selected DNA from inside a white foam container inside the lab refridgerator and place the tube on ice.

- [ ] If this is the first time using this DNA sample or the sample has been stored for a long period, you may want to check the quality of the input DNA using the Nanodrop. ONT recommends the following quality criteria:
    - OD 260/280 of 1.8 and OD 260/230 of 2.0-2.2
    - Concentration > 53.3 ng/uL (to be able to achieve 400 ng total in 7.5 uL)

### Check the flow cell quality

- [ ] Record today's date, the sample name, the run number, and your name at the top of this sheet.
    - Follow the convention "YYYYMMDD_SampleName_RunNumber" for the run number and sample name.
    - Example: 20190403_MorexSample2_Run3

- [ ] Check that the computer has at 500 GB of free space (not counting any connected external drives).

- [ ] Fetch the flow cell from the lab refridgerator and record the flow cell information.
    - Flow cell type (FLO-MIN106 or FLO-MIN107): 
    - Flow cell label (Example: 11000540): 
    - Flow cell barcode (Example: 2002540064): 

- [ ] Plug the MinION into the computer.

- [ ] Remove the configuration test cell and place it in the MinION box for safekeeping.

- [ ] Insert the flow cell into the MinION.

- [ ] Start MinKNOW and check for software updates (lower right corner if available).

- [ ] Click "MinKNOW" in the upper left, then "About MinKNOW", and then record the MinKNOW version numbers.
    - MinKNOW version (Example: 19.06.7): 
    - Core version (Example: 3.4.5):
    - Bream version (Example: 4.1.8):
    - GUI version (Example: 3.4.12):
    - Guppy version (Example: 3.0.4):

- [ ] Select the flowcell, and change the flow cell type to match the flow cell being used.

- [ ] Click "Check flow cells" at the bottom of the screen. Then click "Start test"

- [ ] Continue to library preparation while the test is running. When the test completes, make sure that the active pore count is > 800.
    - Number of active pores: 
    - Flow cell ID (Example: FAJ01802):

### Library preparation

- [ ] Fetch the following reagents from the freezer and record their batch numbers.
    - FRA (brown) batch number:
    - RAP (green) batch number:
    - SQB (red) batch number:
    - LB (pink) batch number:
    - FLB (blue) (use only one vial) batch number:
    - FLT (purple stiped) batch number:

- [ ] Thaw the SQB (red), LB (pink), FLB (blue), and FLT (purple) while keeping the other reagents on ice. 

- [ ] Briefly spin down all six reagents in the centrifuge, then immediately store on ice.  

- [ ] Sanitize a pair of lab scissors using ethanol, then cut the tip off of a 10 uL pipette tip.

- [ ] Add 7.5 uL of sample DNA to a 0.2 mL thin-walled PCR tube using the cut pipette. Place the DNA sample tube back in the fridge, as it will not be used in further steps.

- [ ] With a new pipette tip, mix the vial of FRA by pipetting up and down.

- [ ] Add 2.5 uL of FRA (brown) to the PCR tube with DNA. Place the vial of FRA (brown) back on ice.

- [ ] Gently mix the PCR tube by flicking, then spin down.

- [ ] Place the PCR tube in the middle of the thermocycler plate. Avoid the wells that are discolored. Make sure that the lid locks in place (handle all the way forward), or you will get a COVER ERROR during the run.

- [ ] Start the "Rapid01" cycle under the lilei username. 

- [ ] Incubate the tube at 30° C for 1 minute and then at 80° C for 1 minute. 

- [ ] When you hear the fan kick on, check to make sure the cycle is complete (holding at 4 C). Remove the PCR tube and place it on ice.

### Adapter attachment

- [ ] Mix the vial of RAP (green) by pipetting up and down.

- [ ] Add 1 uL of RAP (green) to the PCR tube. Place the RAP (green) vial back on ice.

- [ ] Gently mix the PCR tube by flicking, then spin down.

- [ ] Wait 13 minutes at room temperature, then store the PCR tube on ice.

### Priming the flow cell

- [ ] Vortex the SQB (red) and FLB (blue) tubes, spin down, and return them to ice.

- [ ] Open the priming port (not the SpotON sample port).

- [ ] Set a 1000 uL pipette to 200 uL and insert the tip into the priming port.

- [ ] Increase the pipette volume until you can see a small volume of buffer entering the pipette tip.

- [ ] Visually check that there is continuous buffer from the priming port across the sensor array.

- [ ] Use a pipette tip to mix the FLT (purple striped) tube by pipetting up and down.

- [ ] Add 30 uL of FLT (purple striped) directly to the tube of FLB (blue) and mix by pipetting up and down. Return the tube of FLT (purple striped) to ice.

- [ ] Load 800 µl of this mix into the flow cell via the priming port, avoiding the introduction of air bubbles.

- [ ] Return the rest of the FLB (blue) mixture to ice.

- [ ] Wait 5 minutes.

### Loading the flow cell

- [ ] Find a LoBind microfuge tube.

- [ ] Using a pipette tip, mix the vial of SQB (red) by pipetting up and down. 

- [ ] Add 34 uL of SQB (red) to the LoBind tube, then return the SQB (red) to ice.

- [ ] Vortex the LB (pink) tube thoroughly, then immediately add 25.5 uL of LB (pink) to the LoBind tube. Return the LB (pink) tube to ice.

- [ ] Add 4.5 uL of nuclease-free water to the LoBind tube.

- [ ] Sanitize a pair of lab scissors using ethanol, then cut the tip off of a 100 mL pipette tip.

- [ ] Using the cut pipette tip, add all (11 uL) of the DNA library (PCR tube) to the LoBind tube.

- [ ] Open the SpotON port. You will have to break the seal. Keep the removed cover in a secure location, as you will need to replace it later.

- [ ] Load 200 µl of the priming mix (blue) into the flow cell via the priming port (not the SpotON sample port), avoiding the introduction of air bubbles.

- [ ] Sanitize a pair of lab scissors using ethanol, then cut the tip off of a 100 mL pipette tip.

- [ ] Using the cut pipette tip, mix the prepared library gently by pipetting up and down just prior to loading.

- [ ] Add all (75 uL) of sample to the flow cell via the SpotON sample port in a dropwise fashion. Ensure each drop flows into the port before adding the next.

- [ ] Gently replace the SpotON sample port cover, making sure the bung enters the SpotON port, close the priming port and replace the MinION lid.

### Start the MinKNOW software

- [ ] Click the "New Experiment" button at the bottom left of the GUI.

- [ ] Follow the convention "YYYYMMDD_SampleName_RunNumber" for both the experiment name and the sample name.
    - Example: 20190403_MorexSample2_Run3

- [ ] Select SQK-RAD004 as the sequencing kit.

- [ ] Disable basecalling. Leave all other settings as the defaults.

- [ ] Start the run.

- [ ] Start the program "Amphetamine" and set the duration to "Indefinitely" to keep the machine awake.

- [ ] Place all reagents back in the freezer (except the DNA sample, which should already be in the fridge).

- [ ] Stick around for 10-15 minutes to make sure that reads are being collected.

- [ ] Store this document in a safe place.
