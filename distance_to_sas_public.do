use distance_to_sas

graph twoway scatter norm_intensity distance if subject=="J2", mcolor(gs5) msymbol(diamond) msize(small) || scatter norm_intensity distance if subject=="J4", mcolor(gs5) msymbol(diamond_hollow) msize(medsmall) || scatter norm_intensity distance if subject=="J5", mcolor(gs5) msymbol(square_hollow) msize(medsmall) || scatter norm_intensity distance if subject=="J7", mcolor(gs5) msymbol(circle_hollow) msize(medsmall)  || scatter norm_intensity distance if subject=="21", mcolor(gs5) msymbol(X) msize(med) || lfitci norm_intensity distance, lcolor(gs8) fcolor(gs12%20) xtitle("Distance (mm)", size (large)) ytitle("Normalized PVS Intentsity", size(large)) xlabel(,labsize(large)) ylabel(,labsize(large)) legend(ring(0) bplacement(neast) label(1 "Subject A") label (2 "Subject B") label(3 "Subject C") label(4 "Subject D") label(5 "Subject E") size(med))

spearman norm_intensity distance 
