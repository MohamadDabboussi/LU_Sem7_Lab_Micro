 ORG $1000
 TRAP #15
 DC.W 6
 Move.l D0,D1
 Move.l #0,A2
loop
 Move.l #0,A1
 add #1,A2
PRTEtoile
 add #1,A1
 MOVE.b #'*',D0
 TRAP #15
 DC.W 1
 CMP.B A1,A2
 bne PRTEtoile
 MOVE.b #13,D0
 TRAP #15
 DC.W 1
 MOVE.b #10,D0
 TRAP #15
 DC.W 1
 CMP A2,D1
 bne loop
 TRAP #15
 DC.W 0  ;Exit
 ORG $2000
 END $1000