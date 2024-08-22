*body effect
.option post

vds d 0 dc 2v
vgs g 0 dc 1.2v
vx  b 0 dc -7v  
m1 d g 0 b n_33 w=4u l=2u

.prot
.lib 'cic018.l' TT
.unprot

.dc vx -7 0 0.05
.print dc i(m1)

.end