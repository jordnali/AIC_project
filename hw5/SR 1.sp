*SR 1
.option post 
vx r 0 pulse(0 3v 0 1p 1p 20ms 40ms)
vy s 0 pulse(0 3v 0 1p 1p 10ms 20ms)

.subckt NOR x y d1 
vdd s3 0 dc 3v
c1 d1 0 1n
mn1 d1 x 0 0 n_33 w=2u l=1u
mn2 d1 y 0 0 n_33 w=2u l=1u
mp3 d3 x s3 s3 p_33 w=8u l=1u
mp4 d1 y d3 d3 p_33 w=8u l=1u
.ends NOR

x1 r qq q NOR
x2 q s qq NOR

.prot
.lib 'cic018.l' tt
.unprot

.tran 100ns 200ms
.end
 