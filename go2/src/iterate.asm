;***** TEXT main.iterate(SB) E:/workspaces/maxim-ge/conctest/go2/src/concgo.go

;*** concgo.go#66   >func iterate(initial_triplet Triplet, n_cycles int) float64 {
0x4ab280     493b6610               CMPQ 0x10(R14), SP			
0x4ab284     0f8632010000           JBE 0x4ab3bc				
0x4ab28a     4883ec78               SUBQ $0x78, SP				
0x4ab28e     48896c2470             MOVQ BP, 0x70(SP)			
0x4ab293     488d6c2470             LEAQ 0x70(SP), BP			
0x4ab298     4889842498000000       MOVQ AX, 0x98(SP)			

;*** concgo.go#77   >			print_convergency(initial_triplet, step, triplet.f2)
0x4ab2a0     f20f11442468           MOVSD_XMM X0, 0x68(SP)			

;*** concgo.go#84   >	return triplet.f2
0x4ab2a6     f20f11542460           MOVSD_XMM X2, 0x60(SP)			
0x4ab2ac     f20f114c2458           MOVSD_XMM X1, 0x58(SP)			
0x4ab2b2     0f10da                 MOVUPS X2, X3				
0x4ab2b5     0f10e1                 MOVUPS X1, X4				

;*** concgo.go#77   >			print_convergency(initial_triplet, step, triplet.f2)
0x4ab2b8     0f10e8                 MOVUPS X0, X5				
0x4ab2bb     31c9                   XORL CX, CX				
0x4ab2bd     31d2                   XORL DX, DX				
0x4ab2bf     90                     NOPL					

;*** concgo.go#72   >	for step := 0; step < n_cycles; step++ {
0x4ab2c0     eb3e                   JMP 0x4ab300				
0x4ab2c2     488b5c2448             MOVQ 0x48(SP), BX			
0x4ab2c7     48ffc3                 INCQ BX					
0x4ab2ca     488b842498000000       MOVQ 0x98(SP), AX			

;*** concgo.go#77   >			print_convergency(initial_triplet, step, triplet.f2)
0x4ab2d2     f20f105c2460           MOVSD_XMM 0x60(SP), X3			
0x4ab2d8     f20f10642458           MOVSD_XMM 0x58(SP), X4			
0x4ab2de     f20f106c2468           MOVSD_XMM 0x68(SP), X5			

;*** concgo.go#76   >		if is_convergent(triplet, next_triplet) && !prokukarek {
0x4ab2e4     89ca                   MOVL CX, DX				

;*** concgo.go#84   >	return triplet.f2
0x4ab2e6     f20f10542438           MOVSD_XMM 0x38(SP), X2			
0x4ab2ec     f20f104c2450           MOVSD_XMM 0x50(SP), X1			
0x4ab2f2     f20f10442440           MOVSD_XMM 0x40(SP), X0			

;*** concgo.go#72   >	for step := 0; step < n_cycles; step++ {
0x4ab2f8     4889d9                 MOVQ BX, CX				
0x4ab2fb     0f1f440000             NOPL 0(AX)(AX*1)			
0x4ab300     4839c8                 CMPQ CX, AX				
0x4ab303     0f8ea6000000           JLE 0x4ab3af				
0x4ab309     48894c2448             MOVQ CX, 0x48(SP)			

;*** concgo.go#76   >		if is_convergent(triplet, next_triplet) && !prokukarek {
0x4ab30e     88542437               MOVB DL, 0x37(SP)			

;*** concgo.go#47   >	applicant := triplet.f0 + triplet.f1 - triplet.f2
0x4ab312     0f10f0                 MOVUPS X0, X6				
0x4ab315     f20f58c1               ADDSD X1, X0				
0x4ab319     f20f5cc2               SUBSD X2, X0				

;*** unsafe.go.23
0x4ab31d     66480f7ec3             MOVQ X0, BX				

;*** abs.go.13
0x4ab322     480fbaf33f             BTRQ $0x3f, BX				

;*** unsafe.go.29
0x4ab327     66480f6efb             MOVQ BX, X7				

;*** concgo.go#49   >	if math.Abs(applicant) <= 1.0 {
0x4ab32c     f2440f1005e3620400     MOVSD_XMM $f64.3ff0000000000000(SB), X8	
0x4ab335     66440f2ec7             UCOMISD X7, X8				
0x4ab33a     7309                   JAE 0x4ab345				

;*** concgo.go#52   >		return Triplet{triplet.f1, triplet.f2, 1.0 / applicant}
0x4ab33c     f2440f5ec0             DIVSD X0, X8				

;*** concgo.go#74   >		next_triplet := get_next_triplet(triplet)
0x4ab341     410f10c0               MOVUPS X8, X0				
0x4ab345     f20f11442438           MOVSD_XMM X0, 0x38(SP)			

;*** concgo.go#84   >	return triplet.f2
0x4ab34b     f20f11542450           MOVSD_XMM X2, 0x50(SP)			
0x4ab351     f20f114c2440           MOVSD_XMM X1, 0x40(SP)			

;*** concgo.go#76   >		if is_convergent(triplet, next_triplet) && !prokukarek {
0x4ab357     0f10d9                 MOVUPS X1, X3				
0x4ab35a     0f10e2                 MOVUPS X2, X4				
0x4ab35d     0f10e8                 MOVUPS X0, X5				
0x4ab360     0f10c6                 MOVUPS X6, X0				
0x4ab363     e8b8feffff             CALL main.is_convergent(SB)		
0x4ab368     84c0                   TESTL AL, AL				
0x4ab36a     7439                   JE 0x4ab3a5				
0x4ab36c     0fb64c2437             MOVZX 0x37(SP), CX			
0x4ab371     84c9                   TESTL CL, CL				
0x4ab373     0f8549ffffff           JNE 0x4ab2c2				

;*** concgo.go#77   >			print_convergency(initial_triplet, step, triplet.f2)
0x4ab379     f20f10442468           MOVSD_XMM 0x68(SP), X0			
0x4ab37f     f20f104c2458           MOVSD_XMM 0x58(SP), X1			
0x4ab385     f20f10542460           MOVSD_XMM 0x60(SP), X2			
0x4ab38b     488b442448             MOVQ 0x48(SP), AX			
0x4ab390     f20f105c2450           MOVSD_XMM 0x50(SP), X3			
0x4ab396     e865160000             CALL main.print_convergency(SB)		
0x4ab39b     b901000000             MOVL $0x1, CX				

;*** concgo.go#78   >			prokukarek = true
0x4ab3a0     e91dffffff             JMP 0x4ab2c2				

;*** concgo.go#76   >		if is_convergent(triplet, next_triplet) && !prokukarek {
0x4ab3a5     0fb64c2437             MOVZX 0x37(SP), CX			
0x4ab3aa     e913ffffff             JMP 0x4ab2c2				

;*** concgo.go#84   >	return triplet.f2
0x4ab3af     0f10c2                 MOVUPS X2, X0				
0x4ab3b2     488b6c2470             MOVQ 0x70(SP), BP			
0x4ab3b7     4883c478               ADDQ $0x78, SP				
0x4ab3bb     c3                     RET					

;*** concgo.go#66   >func iterate(initial_triplet Triplet, n_cycles int) float64 {
0x4ab3bc     f20f11442408           MOVSD_XMM X0, 0x8(SP)			
0x4ab3c2     f20f114c2410           MOVSD_XMM X1, 0x10(SP)			
0x4ab3c8     f20f11542418           MOVSD_XMM X2, 0x18(SP)			
0x4ab3ce     4889442420             MOVQ AX, 0x20(SP)			
0x4ab3d3     e8e8f7faff             CALL runtime.morestack_noctxt.abi0(SB)	
0x4ab3d8     f20f10442408           MOVSD_XMM 0x8(SP), X0			
0x4ab3de     f20f104c2410           MOVSD_XMM 0x10(SP), X1			
0x4ab3e4     f20f10542418           MOVSD_XMM 0x18(SP), X2			
0x4ab3ea     488b442420             MOVQ 0x20(SP), AX			
0x4ab3ef     e98cfeffff             JMP main.iterate(SB)			
