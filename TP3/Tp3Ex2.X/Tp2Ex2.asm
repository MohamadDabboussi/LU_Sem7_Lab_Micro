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
 
movlw b'11110000'
movwf TRISD
clrf TRISC
BCF STATUS,RP0
BCF STATUS,RP1

movlw 0x00
clrf PORTC
bcf PORTD,0
bcf PORTD,1
bcf PORTD,2
bcf PORTD,3
tata
 
bcf PORTD,3
bsf PORTD,0
 
btfsc PORTD,4
movlw 0X06 ;1
 
btfsc PORTD,5
movlw 0X5B ;2
 
btfsc PORTD,6
movlw 0X4F ;3
 
bcf PORTD,0
bsf PORTD,1

 
 
btfsc PORTD,4
movlw 0X66 ;4
 
btfsc PORTD,5
movlw 0X6D ;5
 
btfsc PORTD,6
movlw 0X7D ;6
 
bcf PORTD,1
bsf PORTD,2
 

 
btfsc PORTD,4
movlw 0X07 ;7
 
btfsc PORTD,5
movlw 0X7F ;8
 
btfsc PORTD,6
movlw 0X6F ;9
 
bcf PORTD,2
bsf PORTD,3
 
btfsc PORTD,4
movlw 0X3F ;7
 
btfsc PORTD,5
movlw 0X3F ;8
 
btfsc PORTD,6
movlw 0X3F ;9


 
movwf PORTC
goto tata
 

    
end



