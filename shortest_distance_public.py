

## calculate shortest distance from pvs rois to SAS mask
import nibabel as nib
import mne
import mne.transforms
import numpy as np
import matplotlib.pyplot as plt
img = nib.load("/group_shares/piantinolab/bulk/IT_gad/IT_gad_redo/ITG-J7/post1FL_to_T1_Flirt_DOF6_MI_Han7_brain_fsl_sahmask.nii.gz")
coords = np.loadtxt("/group_shares/piantinolab/bulk/IT_gad/IT_gad_redo/ITG-J7/J7_Clust_post1_table.1D")[:, 1:4]
coords=coords*[-1, -1, 1]
out = np.zeros((len(coords),4))
vox = np.array(np.where(np.array(img.dataobj))).T
csf = mne.transforms.apply_trans(img.affine, vox)
nearest,distances=mne.surface._compute_nearest(csf,coords, return_dists=True) 
out [:, 3] = distances
out [:, :3] = coords
np.savetxt("/group_shares/piantinolab/bulk/IT_gad/practice/testdistance1.txt", out)
