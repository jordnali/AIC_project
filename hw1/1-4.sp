*1-4 pmos 
.option post
 
vgs g s dc -3.3v
vds 0 s dc -3.3v
m1 0 g s s p_33 w=4u l=2u

.prot
.lib 'cic018.l' TT
.unprot

.dc vgs 0 -3.3v -0.1
.print dc i(m1)
.op

.end