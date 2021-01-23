A EQU 9
 ORG $1000
 move.l #$E011,A0
START
 MOVE.b #$0,D0
LOOP
 BSR Delay
 ADDI.b #$01,D0
 CMPI.b #A,D0
 BNE LOOP
 BSR Delay
 BRA START

DELAY
 move.b (Table,D0.w),(A0)
 MOVE.L #$000001FF,D2
W2 MOVE.L #$FFFFFFFF,D1
W1 DBRA D1,W1
 DBRA D2,W2
 RTS

TABLE
 DC.B $3F,$06,$5B,$4F,$66,$6D,$7D,$07,$7F,$6F,$77,$7C,$39,$5E,$79,$71
 END $1000