#!/bin/bash

singularity run \
--cleanenv \
--bind INPUTS:/INPUTS \
--bind OUTPUTS:/OUTPUTS \
baxpr-dwipre-PNC-edit-master-v1.0.0.simg \
--dti35_niigz /INPUTS/DTI_2x32_35.nii.gz \
--dti35_bvals /INPUTS/DTI_2x32_35.bval \
--dti35_bvecs /INPUTS/DTI_2x32_35.bvec \
--dti36_niigz /INPUTS/DTI_2x32_36.nii.gz \
--dti36_bvals /INPUTS/DTI_2x32_36.bval \
--dti36_bvecs /INPUTS/DTI_2x32_36.bvec \
--mask_niigz /INPUTS/edited_mask.nii.gz \
--acq_params "0 -1 0 0.05" \
--project TESTPROJ \
--subject TESTSUBJ \
--session TESTSESS \
--outdir /OUTPUTS
