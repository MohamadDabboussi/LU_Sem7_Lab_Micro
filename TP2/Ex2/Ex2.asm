 ORG $1000
 MOVE.L #$12345678,D0
 MOVE.W #$8000,A0
 MOVE.W #$2000,A0
 MOVE.W #$3000,A1
 MOVE.B (A0),D0
 MOVE.W (A0)+,D0
 MOVE.L (A0)+,D0
 MOVE.W D0,-(A1)
 MOVE.W $2000,D0
 MOVE.L #TABLE,D0
 MOVE.W $02(A0),D1
 MOVE.L #$02,D2
 MOVE.L $02(A0,D2.W),A1
 ORG $2000
TABLE
 DC.B $11,$22,$33,$44,$55,$66,$77,$88,$99,$AA,$BB,$CC,$DD,$EE
 END $1000