 ORG $1000
 LEA STR,A0
loop
 Move A0,A1
MYPRTSTR
 MOVE.b (A1)+,D0
 TRAP #15
 DC.W 1
 CMP.B #0,(A1)
 bne MYPRTSTR
 TRAP #15
 DC.W 2
 cmp.b #'$',D0
 beq exit
 MOVE.b #13,D0
 TRAP #15
 DC.W 1
 MOVE.b #10,D0
 TRAP #15
 DC.W 1
 bra loop
exit
 TRAP #15
 DC.W 0  ;Exit
 ORG $2000
STR DC.B 'You Type= ',0
 END $1000