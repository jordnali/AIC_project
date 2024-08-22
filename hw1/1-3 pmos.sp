*1-3 pmos
.option post

vgs g s dc -3v
vds 0 s dc -3v
m1 0 g s s p_33 w=4u l=2u

.prot
.lib 'cic018.l' TT
.unprot

.dc vds 0 -3v -0.1 vgs 0 -3v -0.5 
.print dc i(m1)
.op

.end

