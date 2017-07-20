if you have your jobs wrapped up in a test.sh file, then
qsub -cwd -V -b y -j y -o dummy.out ./test.sh

Note to  -b y and ./test.sh NOT just test.sh
