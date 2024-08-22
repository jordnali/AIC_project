*OPA5 output swing
.option post

vdd s 0 dc 3v
vin+ g2 0 1.5v
vin1 vin 0 sin(1.5 0.149 10k 2n 0) 


m8 d8 d8 s s p_33 w=10u l=1u
m9 d9 d8 s s p_33 w=10u l=1u
m10 d8 d9 s10 s10 n_33 w=10u l=1u
m11 d9 d9 s11 s11 n_33 w=10u l=1u
m12 s10 s11 s12 s12 n_33 w=10u l=1u m=4
m13 s11 s11 0 0 n_33 w=10u l=1u
r s12 0 5k

m1 d1 g1 s1 s1 p_33 w=10u l=0.5u m=10   
m2 d2 g2 s1 s1 p_33 w=10u l=0.5u m=10
m3 d1 d1 0 0 n_33 w=56u l=1u m=2 
m4 d2 d1 0 0 n_33 w=56u l=1u m=2 
m5 s1 d8 s s p_33 w=79.2u l=0.8u  
m6 out d2 0 0 n_33 w=27.4u l=0.5u m=4   
m7 out d8 s s p_33 w=75u l=1u 
m14 d14 d9 d2 d2 n_33 w=10u l=0.5u 

cc out d14 1.3p
cl out 0 1.2p

r2 vin g1 10k    
r1 g1 out 100k

.prot
.lib 'cic018.l' tt
.unprot

.op 
.tran 1p 200u
.measure tran vomax max v(out)
.measure tran vomin min v(out)
.measure output_swing param='vomax-vomin'

.end