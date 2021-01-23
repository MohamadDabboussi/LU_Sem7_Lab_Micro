 org $1000
loop
 move.b $E001,D0
 cmp.b #%10000011,D0
 bne off
 move.b #1,$E003
 bra loop
off
 move.b #0,$E003
 bra loop
 end $1000
