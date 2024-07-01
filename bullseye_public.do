use bullseye_long_2.26.24

*Variables:
tp1_norm_intensity : intensity of the ROI relative to superior sagittal sinus at timepoint 1
tp2_norm_intensity : intensity of the ROI relative to superior sagittal sinus at timepoint 2
FL_bright_pvs_tp1 : PVS that were bright on T2/FLAIR at timepoint 1
roi_location : PVS, PVS edge, 2 voxels from the edge, 4 voxels from the edge, 7 voxels from the edge


graph box tp1_norm_intensity tp2_norm_intensity if FL_bright_pvs_tp1==1, over(roi_location, relabel(1 "PVS" 2 "PVS edge" 3 "2 voxels" 4 "4 voxels" 5 "7 voxels")) ytitle("Normalized PVS Intensity", size(large)) legend(ring(0) bplacement(neast) label(1 "Timepoint 1") label (2 "Timepoint 2"))

signrank tp1_norm_intensity=tp2_norm_intensity if roi_location_n=="0" & FL_bright_pvs_tp1==1
signrank tp1_norm_intensity=tp2_norm_intensity if roi_location_n=="1" & FL_bright_pvs_tp1==1
signrank tp1_norm_intensity=tp2_norm_intensity if roi_location_n=="2" & FL_bright_pvs_tp1==1
signrank tp1_norm_intensity=tp2_norm_intensity if roi_location_n=="3" & FL_bright_pvs_tp1==1
signrank tp1_norm_intensity=tp2_norm_intensity if roi_location_n=="4" & FL_bright_pvs_tp1==1


