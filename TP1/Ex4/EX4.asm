	.org $0000
	ldx #T
	bra loop
icnt inc COUNT
	bra rtn
loop ldaa 00,x
	anda #$03
	beq icnt
rtn	inx
	dec N
	bne loop
	swi

	.ORG $0100
T .BYTE 0,12,2,3,4,5,252,7,8,44
	.ORG $0130
N .BYTE 10
COUNT .RMB 1
	end