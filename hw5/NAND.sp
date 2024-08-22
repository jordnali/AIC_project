*NAND
.option post 

vdd s3 0 dc 3v
vx x 0 pulse(0 3v 0 1p 1p 20ms 40ms)
vy y 0 pulse(0 3v 0 1p 1p 10ms 20ms)
c1 d1 0 1n
mn1 d1 x s1 s1 n_33 w=4u l=1u
mn2 s1 y 0 0 n_33 w=4u l=1u
mp1 d1 x s3 s3 p_33 w=4u l=1u
mp2 d1 y s3 s3 p_33 w=4u l=1u

.prot
.lib 'cic018.l' TT
.unprot

.tran 100ns 200ms
.print i(mn1)

.end
