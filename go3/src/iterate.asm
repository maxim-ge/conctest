;***** TEXT main.iterate(SB) E:/workspaces/maxim-ge/conctest/go3/src/concgo.go

;*** concgo.go#66   >func iterate(initial_triplet Triplet, n_cycles int) float64 {
0x4ab220     493b6610               CMPQ 0x10(R14), SP			
0x4ab224     0f868d010000           JBE 0x4ab3b7				
0x4ab22a     4883ec68               SUBQ $0x68, SP				
0x4ab22e     48896c2460             MOVQ BP, 0x60(SP)			
0x4ab233     488d6c2460             LEAQ 0x60(SP), BP			
0x4ab238     4889842488000000       MOVQ AX, 0x88(SP)			

;*** concgo.go#80   >			print_convergency(initial_triplet, step, triplet.f2)
0x4ab240     f20f11442458           MOVSD_XMM X0, 0x58(SP)			

;*** concgo.go#87   >	return triplet.f2
0x4ab246     f20f11542450           MOVSD_XMM X2, 0x50(SP)			
0x4ab24c     f20f114c2448           MOVSD_XMM X1, 0x48(SP)			
0x4ab252     0f10da                 MOVUPS X2, X3				
0x4ab255     0f10e1                 MOVUPS X1, X4				

;*** concgo.go#80   >			print_convergency(initial_triplet, step, triplet.f2)
0x4ab258     0f10e8                 MOVUPS X0, X5				
0x4ab25b     31c9                   XORL CX, CX				
0x4ab25d     31d2                   XORL DX, DX				
0x4ab25f     90                     NOPL					

;*** concgo.go#72   >	for step := 0; step < n_cycles; step++ {
0x4ab260     eb0d                   JMP 0x4ab26f				
0x4ab262     48ffc1                 INCQ CX					

;*** concgo.go#87   >	return triplet.f2
0x4ab265     0f10d0                 MOVUPS X0, X2				
0x4ab268     410f10c9               MOVUPS X9, X1				
0x4ab26c     0f10c6                 MOVUPS X6, X0				

;*** concgo.go#72   >	for step := 0; step < n_cycles; step++ {
0x4ab26f     4839c8                 CMPQ CX, AX				
0x4ab272     0f8e32010000           JLE 0x4ab3aa				

;*** concgo.go#47   >	applicant := triplet.f0 + triplet.f1 - triplet.f2
0x4ab278     0f10f0                 MOVUPS X0, X6				
0x4ab27b     f20f58c1               ADDSD X1, X0				
0x4ab27f     f20f5cc2               SUBSD X2, X0				

;*** unsafe.go.23
0x4ab283     66480f7ec3             MOVQ X0, BX				

;*** abs.go.13
0x4ab288     480fbaf33f             BTRQ $0x3f, BX				

;*** unsafe.go.29
0x4ab28d     66480f6efb             MOVQ BX, X7				

;*** concgo.go#49   >	if math.Abs(applicant) <= 1.0 {
0x4ab292     f2440f10057d630400     MOVSD_XMM $f64.3ff0000000000000(SB), X8	
0x4ab29b     66440f2ec7             UCOMISD X7, X8				
0x4ab2a0     7312                   JAE 0x4ab2b4				

;*** concgo.go#52   >		return Triplet{triplet.f1, triplet.f2, 1.0 / applicant}
0x4ab2a2     f2440f5ec0             DIVSD X0, X8				

;*** concgo.go#74   >		next_triplet := get_next_triplet(triplet)
0x4ab2a7     410f10c0               MOVUPS X8, X0				
0x4ab2ab     f2440f100564630400     MOVSD_XMM $f64.3ff0000000000000(SB), X8	

;*** concgo.go#57   >	return math.Abs(f1-f2) < 1e-14
0x4ab2b4     f20f5cf1               SUBSD X1, X6				

;*** unsafe.go.23
0x4ab2b8     66480f7ef3             MOVQ X6, BX				

;*** abs.go.13
0x4ab2bd     480fbaf33f             BTRQ $0x3f, BX				

;*** unsafe.go.29
0x4ab2c2     66480f6ef3             MOVQ BX, X6				
0x4ab2c7     f20f103df9620400       MOVSD_XMM $f64.3d06849b86a12b9b(SB), X7	
0x4ab2cf     660f2efe               UCOMISD X6, X7				

;*** concgo.go#77   >		if approx_eq(triplet.f0, next_triplet.f0) &&
0x4ab2d3     763e                   JBE 0x4ab313				

;*** concgo.go#57   >	return math.Abs(f1-f2) < 1e-14
0x4ab2d5     0f10f1                 MOVUPS X1, X6				
0x4ab2d8     f20f5cca               SUBSD X2, X1				

;*** unsafe.go.23
0x4ab2dc     66480f7ecb             MOVQ X1, BX				

;*** abs.go.13
0x4ab2e1     480fbaf33f             BTRQ $0x3f, BX

;*** unsafe.go.29
0x4ab2e6     664c0f6ecb             MOVQ BX, X9
0x4ab2eb     66410f2ef9             UCOMISD X9, X7

;*** concgo.go#78   >			approx_eq(triplet.f1, next_triplet.f1) &&
0x4ab2f0     7624                   JBE 0x4ab316				

;*** concgo.go#57   >	return math.Abs(f1-f2) < 1e-14
0x4ab2f2     440f10ca               MOVUPS X2, X9				
0x4ab2f6     f20f5cd0               SUBSD X0, X2				

;*** unsafe.go.23
0x4ab2fa     66480f7ed3             MOVQ X2, BX				

;*** abs.go.13
0x4ab2ff     480fbaf33f             BTRQ $0x3f, BX				

;*** unsafe.go.29
0x4ab304     664c0f6ed3             MOVQ BX, X10				
0x4ab309     66410f2efa             UCOMISD X10, X7				
0x4ab30e     0f97c3                 SETA BL					

;*** concgo.go#78   >			approx_eq(triplet.f1, next_triplet.f1) &&
0x4ab311     eb0d                   JMP 0x4ab320				

;*** concgo.go#87   >	return triplet.f2
0x4ab313     0f10f1                 MOVUPS X1, X6				
0x4ab316     440f10ca               MOVUPS X2, X9				
0x4ab31a     31db                   XORL BX, BX				
0x4ab31c     0f1f4000               NOPL 0(AX)				

;*** concgo.go#79   >			approx_eq(triplet.f2, next_triplet.f2) && !prokukarek {
0x4ab320     84db                   TESTL BL, BL				
0x4ab322     0f843affffff           JE 0x4ab262				
0x4ab328     84d2                   TESTL DL, DL				
0x4ab32a     0f8532ffffff           JNE 0x4ab262				

;*** concgo.go#72   >	for step := 0; step < n_cycles; step++ {
0x4ab330     48894c2430             MOVQ CX, 0x30(SP)			

;*** concgo.go#74   >		next_triplet := get_next_triplet(triplet)
0x4ab335     f20f11442428           MOVSD_XMM X0, 0x28(SP)			

;*** concgo.go#87   >	return triplet.f2
0x4ab33b     f2440f114c2440         MOVSD_XMM X9, 0x40(SP)			
0x4ab342     f20f11742438           MOVSD_XMM X6, 0x38(SP)			

;*** concgo.go#80   >			print_convergency(initial_triplet, step, triplet.f2)
0x4ab348     0f10c5                 MOVUPS X5, X0				
0x4ab34b     0f10cc                 MOVUPS X4, X1				
0x4ab34e     0f10d3                 MOVUPS X3, X2				
0x4ab351     4889c8                 MOVQ CX, AX				
0x4ab354     410f10d9               MOVUPS X9, X3				
0x4ab358     e8a3160000             CALL main.print_convergency(SB)		

;*** concgo.go#72   >	for step := 0; step < n_cycles; step++ {
0x4ab35d     488b842488000000       MOVQ 0x88(SP), AX			
0x4ab365     488b4c2430             MOVQ 0x30(SP), CX			

;*** concgo.go#87   >	return triplet.f2
0x4ab36a     f20f10442428           MOVSD_XMM 0x28(SP), X0			

;*** concgo.go#80   >			print_convergency(initial_triplet, step, triplet.f2)
0x4ab370     f20f105c2450           MOVSD_XMM 0x50(SP), X3			
0x4ab376     f20f10642448           MOVSD_XMM 0x48(SP), X4			
0x4ab37c     f20f106c2458           MOVSD_XMM 0x58(SP), X5			

;*** concgo.go#87   >	return triplet.f2
0x4ab382     f20f10742438           MOVSD_XMM 0x38(SP), X6			
0x4ab388     f20f103d38620400       MOVSD_XMM $f64.3d06849b86a12b9b(SB), X7	
0x4ab390     f2440f10057f620400     MOVSD_XMM $f64.3ff0000000000000(SB), X8	
0x4ab399     f2440f104c2440         MOVSD_XMM 0x40(SP), X9			
0x4ab3a0     ba01000000             MOVL $0x1, DX				

;*** concgo.go#81   >			prokukarek = true
0x4ab3a5     e9b8feffff             JMP 0x4ab262				

;*** concgo.go#87   >	return triplet.f2
0x4ab3aa     0f10c2                 MOVUPS X2, X0				
0x4ab3ad     488b6c2460             MOVQ 0x60(SP), BP			
0x4ab3b2     4883c468               ADDQ $0x68, SP				
0x4ab3b6     c3                     RET					

;*** concgo.go#66   >func iterate(initial_triplet Triplet, n_cycles int) float64 {
0x4ab3b7     f20f11442408           MOVSD_XMM X0, 0x8(SP)			
0x4ab3bd     f20f114c2410           MOVSD_XMM X1, 0x10(SP)			
0x4ab3c3     f20f11542418           MOVSD_XMM X2, 0x18(SP)			
0x4ab3c9     4889442420             MOVQ AX, 0x20(SP)			
0x4ab3ce     e8edf7faff             CALL runtime.morestack_noctxt.abi0(SB)	
0x4ab3d3     f20f10442408           MOVSD_XMM 0x8(SP), X0			
0x4ab3d9     f20f104c2410           MOVSD_XMM 0x10(SP), X1			
0x4ab3df     f20f10542418           MOVSD_XMM 0x18(SP), X2			
0x4ab3e5     488b442420             MOVQ 0x20(SP), AX			
0x4ab3ea     e931feffff             JMP main.iterate(SB)			
