LIST p=16F887
#include <p16F887.inc>
__CONFIG _CONFIG1, _WDT_OFF & _HS_OSC
ORG 0x000
 GOTO start
 ORG 0x04
 goto INTERUPT
ORG 0x05
start
BSF STATUS,RP0
BCF STATUS,RP1
MOVLW b'00100001';for P=1000 and 00101000 for P=125
MOVWF OPTION_REG
CLRF TRISB
BSF TRISA,4
BCF TRISA,0
BSF INTCON,T0IE
BSF INTCON,GIE
BCF STATUS,RP0
BCF STATUS,RP1
CLRF PORTB
MOVLW 0x06;for P=1000 and .131 for P=125
MOVWF TMR0
BCF PORTA,0
LOOP
; Main Process Control Program
 ??????.
 GOTO LOOP
INTERUPT
BCF INTCON,T0IF
MOVLW 0x06
MOVWF TMR0
BSF PORTA,0
RETFIE
END


