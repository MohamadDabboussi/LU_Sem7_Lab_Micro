LIST p=16F887
#include <p16F887.inc>
__CONFIG _CONFIG1, _WDT_OFF & _HS_OSC
ORG 0x000
GOTO start
ORG 0x05
start
    BSF STATUS,RP0
    BSF STATUS,RP1
    CLRF ANSELH
    CLRF ANSEL
    BSF STATUS,RP0
    BCF STATUS,RP1
    BSF TRISA,0
    BSF TRISA,1
    BCF TRISB,7
    BCF STATUS,RP0
    BCF STATUS,RP1
LOOP
    BCF PORTB,7
LOOP1
    BTFSS PORTA,0
    GOTO LOOP
	BTFSS PORTA,1
    GOTO LOOP
	BSF PORTB,7
    GOTO LOOP1
END



