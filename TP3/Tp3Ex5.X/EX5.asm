
LIST p=16F887
#include <p16F887.inc>
__CONFIG _CONFIG1, _WDT_OFF & _HS_OSC
ORG 0x000
 GOTO start
  ORG 0x04
 GOTO INTERUPT
ORG 0x05
start
BSF STATUS,RP0
BSF STATUS,RP1
CLRF ANSELH
CLRF ANSEL
 
BSF STATUS,RP0
BCF STATUS,RP1
CLRF TRISD
MOVLW b'0000100'
MOVWF OPTION_REG
 
BSF TRISA,0
BSF TRISA,1
BCF TRISB,7


 
BSF INTCON,T0IE
BSF INTCON,GIE
BCF STATUS,RP0
BCF STATUS,RP1
CLRF PORTD
CLRF 0X22
 
MOVLW 0X06
MOVWF TMR0
    
MOVLW .250
MOVWF 0X020
  
LOOP
 BCF PORTB,7
   LOOP1
    BTFSS PORTA,0
    GOTO LOOP
    BTFSS PORTA,1
    GOTO LOOP
    BSF PORTB,7
    GOTO LOOP1


    
INTERUPT
BCF INTCON,T0IF
MOVLW 0x06
MOVWF TMR0
MOVF 0x22,w
call CONVERT
MOVWF PORTD
DECFSZ 0X020,F
RETFIE
MOVLW .250
MOVWF 0X020
INCF 0X22,F
MOVLW 0X0A
SUBWF 0X22,w
BTFSC STATUS,Z    
CLRF 0X22
RETFIE
 
 
 
CONVERT
ADDWF PCL,F
RETLW 0X3F
RETLW 0X06
RETLW 0X5B
RETLW 0X4F
RETLW 0X66
RETLW 0X6D
RETLW 0X7D
RETLW 0X07
RETLW 0X7F
RETLW 0X6F
 
END






 



