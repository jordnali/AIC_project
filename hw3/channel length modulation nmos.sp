*channel length modulation
.option post

vds d 0 dc 3v
vgs g 0 dc 2v
m1 d g 0 0 n_33 w=10u l=length

.prot
.lib 'cic018.l' TT
.unprot

.dc vds 0 3 0.1 sweep data=test
.data test length
+          0.35u
+          0.7u
+          1.4u
+          2.8u
+          5.6u 
.print dc i(m1)

.end