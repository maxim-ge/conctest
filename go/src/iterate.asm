;***** TEXT main.iterate(SB) E:/workspaces/maxim-ge/conctest/go/src/concgo.go

;*** concgo.go#66   >func iterate(initial_triplet Triplet, n_cycles int) float64 {
0x4ab2c0     4c8d6424d8             LEAQ -0x28(SP), R12			
0x4ab2c5     4d3b6610               CMPQ 0x10(R14), R12			
0x4ab2c9     0f86e3010000           JBE 0x4ab4b2				
0x4ab2cf     4881eca8000000         SUBQ $0xa8, SP				
0x4ab2d6     4889ac24a0000000       MOVQ BP, 0xa0(SP)			
0x4ab2de     488dac24a0000000       LEAQ 0xa0(SP), BP			
0x4ab2e6     48898424c8000000       MOVQ AX, 0xc8(SP)			

;*** concgo.go#68   >	triplet := initial_triplet
0x4ab2ee     488b8c24b0000000       MOVQ 0xb0(SP), CX			
0x4ab2f6     48894c2470             MOVQ CX, 0x70(SP)			
0x4ab2fb     0f108c24b8000000       MOVUPS 0xb8(SP), X1			
0x4ab303     0f114c2478             MOVUPS X1, 0x78(SP)			
0x4ab308     31c9                   XORL CX, CX				
0x4ab30a     31d2                   XORL DX, DX				

;*** concgo.go#72   >	for step := 0; step < n_cycles; step++ {
0x4ab30c     eb32                   JMP 0x4ab340				

;*** concgo.go#81   >		triplet = next_triplet
0x4ab30e     488b9c2488000000       MOVQ 0x88(SP), BX			
0x4ab316     48895c2470             MOVQ BX, 0x70(SP)			
0x4ab31b     0f108c2490000000       MOVUPS 0x90(SP), X1			
0x4ab323     0f114c2478             MOVUPS X1, 0x78(SP)			

;*** concgo.go#72   >	for step := 0; step < n_cycles; step++ {
0x4ab328     488b5c2438             MOVQ 0x38(SP), BX			
0x4ab32d     48ffc3                 INCQ BX					
0x4ab330     488b8424c8000000       MOVQ 0xc8(SP), AX			

;*** concgo.go#76   >		if is_convergent(triplet, next_triplet) && !prokukarek {
0x4ab338     89ca                   MOVL CX, DX				

;*** concgo.go#72   >	for step := 0; step < n_cycles; step++ {
0x4ab33a     4889d9                 MOVQ BX, CX				
0x4ab33d     0f1f00                 NOPL 0(AX)				
0x4ab340     4839c8                 CMPQ CX, AX				
0x4ab343     0f8e50010000           JLE 0x4ab499				
0x4ab349     48894c2438             MOVQ CX, 0x38(SP)			

;*** concgo.go#76   >		if is_convergent(triplet, next_triplet) && !prokukarek {
0x4ab34e     88542437               MOVB DL, 0x37(SP)			

;*** concgo.go#74   >		next_triplet := get_next_triplet(triplet)
0x4ab352     488b5c2470             MOVQ 0x70(SP), BX			
0x4ab357     48895c2458             MOVQ BX, 0x58(SP)			
0x4ab35c     0f10442478             MOVUPS 0x78(SP), X0			
0x4ab361     0f11442460             MOVUPS X0, 0x60(SP)			
0x4ab366     440f117c2440           MOVUPS X15, 0x40(SP)			
0x4ab36c     440f117c2448           MOVUPS X15, 0x48(SP)			

;*** concgo.go#47   >	applicant := triplet[0] + triplet[1] - triplet[2]
0x4ab372     f20f10442458           MOVSD_XMM 0x58(SP), X0			
0x4ab378     f20f58442460           ADDSD 0x60(SP), X0			
0x4ab37e     f20f5c442468           SUBSD 0x68(SP), X0			

;*** unsafe.go.23
0x4ab384     66480f7ec3             MOVQ X0, BX				

;*** abs.go.13
0x4ab389     480fbaf33f             BTRQ $0x3f, BX				

;*** unsafe.go.29
0x4ab38e     66480f6ecb             MOVQ BX, X1				

;*** concgo.go#49   >	if math.Abs(applicant) <= 1.0 {
0x4ab393     f20f10158d720400       MOVSD_XMM $f64.3ff0000000000000(SB), X2	
0x4ab39b     660f2ed1               UCOMISD X1, X2				
0x4ab39f     90                     NOPL					
0x4ab3a0     722c                   JB 0x4ab3ce				

;*** concgo.go#74   >		next_triplet := get_next_triplet(triplet)
0x4ab3a2     440f117c2440           MOVUPS X15, 0x40(SP)			
0x4ab3a8     440f117c2448           MOVUPS X15, 0x48(SP)			

;*** concgo.go#50   >		return Triplet{triplet[1], triplet[2], applicant}
0x4ab3ae     f20f104c2460           MOVSD_XMM 0x60(SP), X1			

;*** concgo.go#74   >		next_triplet := get_next_triplet(triplet)
0x4ab3b4     f20f114c2440           MOVSD_XMM X1, 0x40(SP)			

;*** concgo.go#50   >		return Triplet{triplet[1], triplet[2], applicant}
0x4ab3ba     f20f104c2468           MOVSD_XMM 0x68(SP), X1			

;*** concgo.go#74   >		next_triplet := get_next_triplet(triplet)
0x4ab3c0     f20f114c2448           MOVSD_XMM X1, 0x48(SP)			
0x4ab3c6     f20f11442450           MOVSD_XMM X0, 0x50(SP)			
0x4ab3cc     eb2e                   JMP 0x4ab3fc				
0x4ab3ce     440f117c2440           MOVUPS X15, 0x40(SP)			
0x4ab3d4     440f117c2448           MOVUPS X15, 0x48(SP)			

;*** concgo.go#52   >		return Triplet{triplet[1], triplet[2], 1.0 / applicant}
0x4ab3da     f20f104c2460           MOVSD_XMM 0x60(SP), X1			

;*** concgo.go#74   >		next_triplet := get_next_triplet(triplet)
0x4ab3e0     f20f114c2440           MOVSD_XMM X1, 0x40(SP)			

;*** concgo.go#52   >		return Triplet{triplet[1], triplet[2], 1.0 / applicant}
0x4ab3e6     f20f104c2468           MOVSD_XMM 0x68(SP), X1			

;*** concgo.go#74   >		next_triplet := get_next_triplet(triplet)
0x4ab3ec     f20f114c2448           MOVSD_XMM X1, 0x48(SP)			

;*** concgo.go#52   >		return Triplet{triplet[1], triplet[2], 1.0 / applicant}
0x4ab3f2     f20f5ed0               DIVSD X0, X2				

;*** concgo.go#74   >		next_triplet := get_next_triplet(triplet)
0x4ab3f6     f20f11542450           MOVSD_XMM X2, 0x50(SP)			
0x4ab3fc     488b442440             MOVQ 0x40(SP), AX			
0x4ab401     4889842488000000       MOVQ AX, 0x88(SP)			
0x4ab409     0f10442448             MOVUPS 0x48(SP), X0			
0x4ab40e     0f11842490000000       MOVUPS X0, 0x90(SP)			

;*** concgo.go#76   >		if is_convergent(triplet, next_triplet) && !prokukarek {
0x4ab416     488b442470             MOVQ 0x70(SP), AX			
0x4ab41b     48890424               MOVQ AX, 0(SP)				
0x4ab41f     0f10442478             MOVUPS 0x78(SP), X0			
0x4ab424     0f11442408             MOVUPS X0, 0x8(SP)			
0x4ab429     488b842488000000       MOVQ 0x88(SP), AX			
0x4ab431     4889442418             MOVQ AX, 0x18(SP)			
0x4ab436     0f10842490000000       MOVUPS 0x90(SP), X0			
0x4ab43e     0f11442420             MOVUPS X0, 0x20(SP)			
0x4ab443     e8f8fdffff             CALL main.is_convergent(SB)		
0x4ab448     84c0                   TESTL AL, AL				
0x4ab44a     7443                   JE 0x4ab48f				
0x4ab44c     0fb64c2437             MOVZX 0x37(SP), CX			
0x4ab451     84c9                   TESTL CL, CL				
0x4ab453     0f85b5feffff           JNE 0x4ab30e				

;*** concgo.go#77   >			print_convergency(initial_triplet, step, triplet[2])
0x4ab459     488b8c24b0000000       MOVQ 0xb0(SP), CX			
0x4ab461     f20f10842480000000     MOVSD_XMM 0x80(SP), X0			
0x4ab46a     48890c24               MOVQ CX, 0(SP)				
0x4ab46e     0f108c24b8000000       MOVUPS 0xb8(SP), X1			
0x4ab476     0f114c2408             MOVUPS X1, 0x8(SP)			
0x4ab47b     488b442438             MOVQ 0x38(SP), AX			
0x4ab480     e89b160000             CALL main.print_convergency(SB)		
0x4ab485     b901000000             MOVL $0x1, CX				

;*** concgo.go#78   >			prokukarek = true
0x4ab48a     e97ffeffff             JMP 0x4ab30e				

;*** concgo.go#76   >		if is_convergent(triplet, next_triplet) && !prokukarek {
0x4ab48f     0fb64c2437             MOVZX 0x37(SP), CX			
0x4ab494     e975feffff             JMP 0x4ab30e				

;*** concgo.go#84   >	return triplet[2]
0x4ab499     f20f10842480000000     MOVSD_XMM 0x80(SP), X0			
0x4ab4a2     488bac24a0000000       MOVQ 0xa0(SP), BP			
0x4ab4aa     4881c4a8000000         ADDQ $0xa8, SP				
0x4ab4b1     c3                     RET					

;*** concgo.go#66   >func iterate(initial_triplet Triplet, n_cycles int) float64 {
0x4ab4b2     4889442420             MOVQ AX, 0x20(SP)			
0x4ab4b7     e804f7faff             CALL runtime.morestack_noctxt.abi0(SB)	
0x4ab4bc     488b442420             MOVQ 0x20(SP), AX			
0x4ab4c1     e9fafdffff             JMP main.iterate(SB)			
