cat ../FrBC_Aged/FrBC_Aged_Rep1_Subsampled/FrBC_Aged_Rep1_Subsampled_peaks.narrowPeak ../FrBC_Aged/FrBC_Aged_Rep2_Subsampled/FrBC_Aged_Rep2_Subsampled_peaks.narrowPeak ../FrBC_Young/FrBC_Young_Rep1/FrBC_Young_Rep1_peaks.narrowPeak ../FrBC_Young/FrBC_Young_Rep2/FrBC_Young_Rep2_peaks.narrowPeak > FrBC_Aged_and_Young_Cancatenated.bed

sortBed -i FrBC_Aged_and_Young_Cancatenated.bed > FrBC_Aged_and_Young_Cancatenated_sorted.bed

mergeBed -i FrBC_Aged_and_Young_Cancatenated_sorted.bed -d 100 > FrBC_Aged_and_Young_Cancatenated_sorted_merged.bed 

subtractBed -a FrBC_Aged_and_Young_Cancatenated_sorted_merged.bed -b mm10_blacklist_sloped_5000.bed -A > FrBC_Aged_and_Young_Cancatenated_sorted_merged_BLed.bed