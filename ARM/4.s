.text
LDR r0,=A
LDR r1,[r0]
MOV r3,#0 ;
MOV r4,#0 ;
L:
CMP r1,#0 ;
BEQ exit ;
AND r2,r1,#1;
CMP r2,#1 ; 
ADDEQ r3,r3,#1 ; 
MOV r1,r1,LSR #1 ;
BEQ L 
BL;
exit:
AND r5,r3,#1 ;
CMP r5,#1 ;
ADDEQ r4,r4,#1 ;
SWI 0x011
.data
A:.word 100