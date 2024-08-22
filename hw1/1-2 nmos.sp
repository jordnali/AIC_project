*1-2 nmos 
.option post
 
vgs g 0 dc 3.3v
vds d 0 dc 3.3v
m1 d g 0 0 n_33 w=4u l=2u

.prot
.lib 'cic018.l' TT
.unprot

.dc vgs 0 3.3v 0.1
.print dc i(m1)
.op

.end