*CS
.option post

vdd dd 0 dc 3.3v
vin g 0 dc 1v
rd dd d 10k 
m1 d g 0 0 n_33 w=10u l=1u

.prot
.lib 'cic018.l' TT
.unprot


.op all 
.tf v(d) vin
.print dc i(m1)

.end


