#!/usr/bin/sh

#CCS -N djan_hare_st85
#CCS --res=rset=1:ncpus=1:mem=280g
#CCS -t 8h
#CCS -o djan_harest85.txt
#CCS -M desouki@mail.uni-paderborn.de
## specify when to send email: begin , abort,end
#CCS -meab

cd /upb/departments/pc2/users/d/desouki/abd

cat $CCS_NODEFILE

module add r

# ncpus=1:mem=120g 12h
#Rscript R/wdjan_FW10_nc1.R

#ncpus=1,mem=190g,6h 
#Rscript R/wdjan_FW10_nc8.R

#ncpus=1,280g
#Rscript R/newjun_hare.R

#ncpu=1,280g
Rscript djan_calc_ST.R
