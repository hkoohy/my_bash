#!/bin/bash
# ***************** NOTE *******************
#for some of these commands you need to ask more memory than what is available by default. In particular:
# -cwd -V -b y -l h_vmem=10G -j y -o H3K4ME1_BDG ./run_macs2.sh
# ********************* End of Note *************** 

##for differential binding analysis see: https://github.com/taoliu/MACS/wiki/Call-differential-binding-events

#IP_DIR=/bi/group/sysgen/Hashem/Jeremy_Data/H3K4ME3/
#INPUT_DIR=/bi/scratch/for_Hashem/Input_Young_Old_Merged/
#OUTPUT_DIR=/bi/group/sysgen/Hashem/Jeremy_Data/MACS_OUTPUT/H3K4ME3/


#macs2 callpeak -B -t ${IP_DIR}lane5_old_IP_H3K4me3_CTTGTA_L005_R1_val_1.fq.gz_bowtie2_Mapped_Only_Sorted_rmdup.bam -c ${INPUT_DIR}Input_Young_and_Old_Merged_16_Percent_Pooled_Sorted_rmdup.bam   -g mm -n H3K4ME3_Old -f BAM  --outdir ${OUTPUT_DIR} -p 0.001 --nomodel --extsize 147


#IP_DIR=/bi/group/sysgen/Hashem/Jeremy_Data/MACS_OUTPUT/H3K4ME3/
#OUTPUT_DIR=/bi/group/sysgen/Hashem/Jeremy_Data/MACS_OUTPUT/H3K4ME3/
#macs2 bdgdiff --t1 ${IP_DIR}H3K4ME3_Young_treat_pileup.bdg --c1 ${IP_DIR}H3K4ME3_Young_control_lambda.bdg --t2 ${IP_DIR}H3K4ME3_Old_treat_pileup.bdg  --c2 ${IP_DIR}H3K4ME3_Old_control_lambda.bdg --d1 2438648  --d2 4824724 -g 200 -l 300 --o-prefix H3K4ME3_Young_vs_Old --outdir ${OUTPUT_DIR}


#macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/lane5_H3K4me1-oldBC-1_GCCAAT_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
#    -g mm \
#    -n H3K4ME1_BC_Aged \
#    -f BAM \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Aged -p 0.001 --nomodel --shift 73 -B --SPMR


#macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/lane5_H3K4me1-yoBC-1_TGACCA_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
#    -g mm \
#    -n H3K4ME1_BC_Young \
#    -f BAM \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Young -p 0.001 --nomodel --shift 73  -B --SPMR

macs2 bdgcmp -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Aged/H3K4ME1_BC_Aged_treat_pileup.bdg \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Aged/H3K4ME1_BC_Aged_control_lambda.bdg \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Aged_BDG \
    --o-prefix H3K4ME1_BC_Aged \
    -m logLR -p 0.00001


macs2 bdgcmp -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Young/H3K4ME1_BC_Young_treat_pileup.bdg \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Young/H3K4ME1_BC_Young_control_lambda.bdg \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Young_BDG \
    --o-prefix H3K4ME1_BC_Young \
    -m logLR -p 0.00001
