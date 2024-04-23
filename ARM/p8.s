SRAM_BASE  EQU   0x40000000
           AREA  program6, CODE, READONLY
           ENTRY
main
           MOV   r9, #0
           MOV   r10, #6
           MOV   r11, #8
           LDR   sp, =SRAM_BASE
           MOV   r1, #0
           MOV   r2, #5
           MOV   r3, #6
           MOV   r4, #8
           MOV   r5, #11
           MOV   r6, #12
           MOV   r7, #16
           STMIA  sp!, {r1-r7}
           BL     RBS
           LDMDB  sp!, {r1-r7}
stop       B      stop
RBS
          ;LDR   r1, [sp, #-0x1C]
          ;LDR   r2, [sp, #-0x18]
          ;LDR   r3, [sp, #-0x14]
          ;LDR   r4, [sp, #-0x10]
          ;LDR   r5, [sp, #-0xC]
          ;LDR   r6, [sp, #-0x8]
          ;LDR   r7, [sp, #-0x4]
           CMP   r9, r10          ;compare ub to lb
           BGT   error            ;if ub<lb error
           ADD   r8, r9, r10      ;add lb and ub
           MOV   r8, r8, LSR#1    ;half = (lb+ub)/2
           LDR   r5, [sp, #-r8]   ;load the value at half  This is where I am stuck
           CMP   r11, r5          ;compare the search to half
           MOVEQ  r0, r5          ;if a[half] == value 
           SUBLT  r8, r8, #1      ;if a[half] > value, half-1 
           MOVLT  r10, r8         ;ub= half
           BLT    RBS             ;go through again
           ADDGT  r8, r8, #1      ;if a[half] < value, half+1
           MOVGT  r9, r8          ;lb = half
           BGT    RBS
           LDMDB  sp!, {r1-r7, pc}  ;go back to main

error      MOV   r0, #0
B          stop
END