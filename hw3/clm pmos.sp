*clm pmos
.option post

vds 0 s dc -3v
vgs g s dc -2v
m1 0 g s s p_33 w=10u l=length

.prot
.lib 'cic018.l' TT
.unprot

.dc vds -3 0 0.1 sweep data=test
.data test length 
+          0.35u
+          0.7u
+          1.4u
+          2.8u
+          5.6u 
.print dc i(m1)

.end



