	.org $0000
	clra
	ldab N
loop aba
	decb
	BCS car
rr  bne loop
	staa ResL
	wai
	swi
car INC ResH
	JMP rr
	.org $0100
N .byte 255
ResH .rmb 1
ResL .rmb 1
	.end