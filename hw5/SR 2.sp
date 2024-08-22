*SR 2
.option post

vx R 0 pulse(0 3v 0 10p 10p 20ms 40ms)
vy S 0 pulse(0 3v 0 10p 10p 10ms 20ms)

.subckt NAND x1 y1 d1
vdd s3 0 dc 3v
c1 d1 0 100n
mn1 d1 x1 s1 s1 n_33 w=4u l=1u
mn2 s1 y1 0 0 n_33 w=4u l=1u
mp1 d1 x1 s3 s3 p_33 w=4u l=1u
mp2 d1 y1 s3 s3 p_33 w=4u l=1u
.ends NAND

.subckt NOR x1 y1 d1 
vdd s3 0 dc 3v 
c1 d1 0 1n
mn1 d1 x1 0 0 n_33 w=2u l=1u
mn2 d1 y1 0 0 n_33 w=2u l=1u
mp3 d3 x1 s3 s3 p_33 w=8u l=1u
mp4 d1 y1 d3 d3 p_33 w=8u l=1u
.ends NOR

.subckt inverter g d
vdd s 0 dc 3v
c1 d 0 100p
mn d g 0 0 n_33 w=2u l=1u
mp d g s s p_33 w=4u l=1u
.ends inverter

x1 S R A NAND
x2 A R B NAND
x3 B R2 inverter
x4 S Q QQ NOR
x5 QQ R2 Q NOR

.prot
.lib 'cic018.l' TT
.unprot

.tran 10ns 200ms
.end

 


