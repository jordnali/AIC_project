*BIAS
.option post

vdd s 0 dc 3v
m8 d8 d8 s s p_33 w=10u l=1u
m9 d9 d8 s s p_33 w=10u l=1u
m10 d8 d9 s10 s10 n_33 w=10u l=1u
m11 d9 d9 s11 s11 n_33 w=10u l=1u
m12 s10 s11 s12 s12 n_33 w=10u l=1u m=4
m13 s11 s11 0 0 n_33 w=10u l=1u
r s12 0 5k

.prot
.lib 'cic018.l' TT
.unprot


.dc s 0 3v 0.5  
.op
.print dc i(m8) i(m10) i(m12)

.end
  




