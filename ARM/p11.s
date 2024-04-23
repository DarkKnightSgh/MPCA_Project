.data
STRING: .ASCIZ "Intoduction to Microprocessor"
SUBSTR: .ASCIZ "Microprocessor"
OUTPUT1: .ASCIZ "String is present"
OUTPUT2: .ASCIZ "String is not present"
.text
LDR r0,=STRING
LDR r1,=SUBSTR
initmatch:
LDRB r2,[r0],#1
LDRB r3,[r1]
CMP r2,#0
BEQ notfound
CMP r2,r3
MOV r4,r0
ADD r5,r1,#1
BEQ submatch
B initmatch
submatch:
LDRB r2,[r4],#1
LDRB r3,[r5],#1
CMP r3,#0
BEQ found
CMP r2,r3
BEQ submatch
B initmatch
found:
 LDR r1,=OUTPUT1
 B LOOP
notfound:
 LDR r1,=OUTPUT2
 B LOOP
LOOP:
 LDRB R0,[R1],#1
 CMP R0,#0
 SWINE 0x00
 BNE LOOP
SWI 0x11