*inverter
.option post

vdd s 0 dc 3v
vin g 0 pulse(0v 3v 0 1p 1p 10ms 20ms)
c1 d 0 100p
mn d g 0 0 n_33 w=2u l=1u
mp d g s s p_33 w=4u l=1u
 
.prot
.lib 'cic018.l' TT
.unprot

.tran 100ns 100ms
.print i(mn)

.end




