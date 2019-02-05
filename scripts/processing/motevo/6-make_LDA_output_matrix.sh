#!/bin/sh
# Jake Yeung
# 6-make_LDA_output_matrix.sh
# Make LDA output matrix as expression matrix.
# Things like log scale should be considered
# 2019-02-04

wd="/home/hub_oudenaarden/jyeung/projects/scChiC"
rs="/home/hub_oudenaarden/jyeung/projects/scChiC/scripts/processing/motevo/lib/lda_to_norm_mat.R"
# inf="/hpc/hub_oudenaarden/jyeung/data/scChiC/raw_demultiplexed/LDA_outputs_all/ldaAnalysisBins_MetaCell/lda_outputs.meanfilt_1.cellmin_100.cellmax_500000.binarize.FALSE/lda_out_meanfilt.BM-H3K4me1.CountThres0.K-5_15_25.Robj"
inf="/hpc/hub_oudenaarden/jyeung/data/scChiC/raw_demultiplexed/LDA_outputs_all/ldaAnalysisHiddenDomains_1000/lda_outputs.meanfilt_1.cellmin_100.cellmax_500000.binarize.FALSE/lda_out_meanfilt.PZ-BM-H3K4me1.CountThres0.K-15_20_25_30_35.Robj"
thres=0.99
# outf="/hpc/hub_oudenaarden/jyeung/data/scChiC/raw_demultiplexed/count_mats_all/count_mats_binned_norm/cellmin_100-cellmax_500000-binarize_FALSE-BM_H3K4me1.filt_${thres}.txt"
outf="/hpc/hub_oudenaarden/jyeung/data/scChiC/mara_analysis/mara_input/count_mats_peaks_norm/hiddenDomains_cellmin_100-cellmax_500000-binarize_FALSE-BM_H3K4me1.filt_${thres}.txt"

cd $wd

Rscript $rs $inf $outf --thres $thres