A EQU 9
 ORG $1000
 move.l #$E003,A0
START
 MOVE.b #$0,(A0)
LOOP
 ADDI.b #$01,(A0)
 CMPI.b #A,(A0)
 BNE LOOP
 BRA START
 END $1000