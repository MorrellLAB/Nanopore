# Morrell Lab Nanopore Sequencing
Lab-specific protocols and data handling for Nanopore sequencing with the MinION.  
Based off [Li Lei's Nanopore GitHub](https://github.com/lilei1/Nanopore_sequencing/blob/master).

## Reagents, flowcells, and DNA sample locations
Size-selected DNA > 40kb is stored inside a white foam container inside the lab refrigerator.  
    - Size selection is performed by UMGC.  
    - Each sample should be labeled and dated. Samples can be stored at 4 degrees C for a long period of time.  
Unusued flowcells are stored on the top shelf of the lab refrigerator.  
    - Please do not put used flowcells back into the refrigerator.  
Most Nanopore reagents are stored inside a clear plastic bag in the lower left side of the lab freezer.  
    - Please do not put used XXX reagent back inside the freezer! Those vials are one-time use only.  
    - All other reagents should be kept frozen at all times unless the protocol specifies otherwise.  

## Rapid Sequencing (SQK-RAD004) protocol

Please see the [SQK-RAD004 directory]() for protocol-specific instructions.

## Running MinKNOW

> **Warning!** Turn off basecall during sequencing, or the data collection will be very slow.

Runs should be named following the convention "YYYYMMDD_SampleName_RunNumber"
    - Example: 20190403_MorexSample2_Run3

After the run has been started, start the program "Amphetamine" and set the duration to "Indefinite" to keep the machine awake.

If the minKNOW GUI looks wierd, press CMD+R to refresh the GUI.

## Basecalling with Guppy

After the sequencing run is finished (48 hours), use the following command to start Guppy. Remember to change the paths to match your run date and sample name.

At this time, the used flowcell can be stored to be sent back for recycling.

```
/Users/LiLei/softwares/ont-guppy-cpu/bin/guppy_basecaller --input_path /Library/MinKNOW/data/YYYYMMDD_SampleName_RunNumber/SampleName/RunIdentifier/fast5 --save_path /Library/MinKNOW/data/YYYYMMDD_SampleName_RunNumber/basecalled --flowcell FLO-MIN106 --kit SQK-RAD004
```

## Data backup

After basecalling, you should backup the data to S3 and on lab hard drive #8.

You can use [Globus](https://app.globus.org/file-manager?destination_id=fb6f1c6b-86b1-11e8-9571-0a6d4e044368&destination_path=%2F~%2FScratch%2F&origin_id=d865fc6a-2db3-11e6-8070-22000b1701d1&origin_path=%2F~%2F) to backup the data to your S3.

Use rdiff backup to back up data to the external hard drive.

```
rdiff-backup --force /Library/MinKNOW/data/YYYYMMDD_SampleName_RunNumber/ /Volumes/Drive8/Nanopore/YYYYMMDD_SampleName_RunNumber/
```

---

## Resources

[Li's Nanopore GitHub](https://github.com/lilei1/Nanopore_sequencing/blob/master).

### Software:

[How do I do a full uninstall of MinKNOW? (requires ONT account)](https://community.nanoporetech.com/support/faq/test1/minknow/troubleshooting-MinKNOW/how-do-i-do-a-full-uninstall-of-minknow)

[MinKNOW, Guppy, and MinION software latest versions (requires ONT account)](https://community.nanoporetech.com/downloads)

### Protocols:

[Rapid Sequencing (SQK-RAD004) protocol (requires ONT account)](https://community.nanoporetech.com/protocols/rapid-sequencing-sqk-rad004/v/RSE_9046_v1_revF_17Nov2017)

[1D Genomic DNA by Ligation (SQK-LSK109) protocol (requires ONT account)](https://community.nanoporetech.com/protocols/1d-gDNA-sqk-lsk109/v/GDE_9063_v109_revG_23May2018)

[Washing flow cells protocol (requires ONT account)](https://community.nanoporetech.com/protocols/washing-minion-flow-cells/v/WKE_1012_v1_revN_08Apr2016)

[Video from YouTube](https://www.youtube.com/watch?v=IRTdK0kl9v4)
