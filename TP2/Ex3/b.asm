 ORG $1000
 MOVE.W #$2000,A0
 MOVE.b 1(A0),$E015
 MOVE.b 5(A0),$E017
CONVERT
 ORG $2000
TABLE
 DC.B $3F,$06,$5B,$4F,$66,$6D,$7D,$07,$7F,$6F,$77,$7C,$39,$5E,$79,$71
 END $1000