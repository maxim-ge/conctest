file /rustc/db9d1b20bba1968c1ec1fc49616d4742c1725b4b\library\core\src\iter\range.rs does not exist!
file /rustc/db9d1b20bba1968c1ec1fc49616d4742c1725b4b\library\alloc\src\raw_vec.rs does not exist!
file /rustc/db9d1b20bba1968c1ec1fc49616d4742c1725b4b\library\core\src\cmp.rs does not exist!
file /rustc/db9d1b20bba1968c1ec1fc49616d4742c1725b4b\library\core\src\fmt\mod.rs does not exist!
file /rustc/db9d1b20bba1968c1ec1fc49616d4742c1725b4b\library\std\src\f64.rs does not exist!
file /rustc/db9d1b20bba1968c1ec1fc49616d4742c1725b4b\library\alloc\src\alloc.rs does not exist!
file /rustc/db9d1b20bba1968c1ec1fc49616d4742c1725b4b\library\core\src\ptr\mod.rs does not exist!
 fn iterate(initial_triplet: Triplet, n_cycles: usize) -> f64 {
 push    rbp
 push    r15
 push    r14
 push    r13
 push    r12
 push    rsi
 push    rdi
 push    rbx
 sub     rsp, 344
 lea     rbp, [rsp, +, 128]
 movapd  xmmword, ptr, [rbp, +, 192], xmm11
 movapd  xmmword, ptr, [rbp, +, 176], xmm10
 movapd  xmmword, ptr, [rbp, +, 160], xmm9
 movapd  xmmword, ptr, [rbp, +, 144], xmm8
 movapd  xmmword, ptr, [rbp, +, 128], xmm7
 movapd  xmmword, ptr, [rbp, +, 112], xmm6
     mov     qword, ptr, [rbp, +, 104], -2
     test    rdx, rdx
     je      .LBB75_9
 let mut triplet = initial_triplet;
 mov     rsi, rdx
 mov     rdi, rcx
 movsd   xmm6, qword, ptr, [rcx, +, 16]
 movsd   xmm7, qword, ptr, [rcx]
 movsd   xmm8, qword, ptr, [rcx, +, 8]
 xor     eax, eax
 movapd  xmm9, xmmword, ptr, [rip, +, __xmm@7fffffffffffffff7fffffffffffffff]
 movsd   xmm10, qword, ptr, [rip, +, __real@3ff0000000000000]
 movsd   xmm11, qword, ptr, [rip, +, __real@3cd203af9ee75616]
 lea     rbx, [rbp, +, 40]
 lea     r13, [rip, +, _ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17h2e0e0aac5c6856adE]
 lea     r14, [rbp, -, 40]
 lea     r15, [rbp, -, 88]
 xor     r12d, r12d
 jmp     .LBB75_2
.LBB75_15:
 mov     al, 1
.LBB75_8:
     add     r12, 1
     cmp     rsi, r12
     je      .LBB75_9
.LBB75_2:
 let applicant = triplet[0] + triplet[1] - triplet[2];
 movapd  xmm0, xmm7
 movapd  xmm7, xmm8
 movapd  xmm8, xmm6
 movapd  xmm6, xmm0
 addsd   xmm6, xmm7
 subsd   xmm6, xmm8
     movapd  xmm1, xmm6
     andpd   xmm1, xmm9
 if applicant.abs() <= 1.0 {
 ucomisd xmm10, xmm1
 jae     .LBB75_4
 movapd  xmm1, xmm10
 divsd   xmm1, xmm6
 movapd  xmm6, xmm1
.LBB75_4:
 return (f1 - f2).abs() < 1e-15
 subsd   xmm0, xmm7
     andpd   xmm0, xmm9
 ucomisd xmm11, xmm0
 approx_eq(triplet[0], next_triplet[0]) &&
 jbe     .LBB75_8
 return (f1 - f2).abs() < 1e-15
 movapd  xmm0, xmm7
 subsd   xmm0, xmm8
     andpd   xmm0, xmm9
 ucomisd xmm11, xmm0
 approx_eq(triplet[0], next_triplet[0]) &&
 jbe     .LBB75_8
 return (f1 - f2).abs() < 1e-15
 movapd  xmm0, xmm8
 subsd   xmm0, xmm6
     andpd   xmm0, xmm9
 ucomisd xmm11, xmm0
 if is_convergent(triplet, next_triplet) && !prokukarek {
 jbe     .LBB75_8
 mov     ecx, eax
 and     cl, 1
 jne     .LBB75_8
 print_convergency(initial_triplet, step, triplet[2]);
 mov     rax, qword, ptr, [rdi, +, 16]
 mov     qword, ptr, [rbp, +, 80], rax
 movupd  xmm0, xmmword, ptr, [rdi]
 movapd  xmmword, ptr, [rbp, +, 64], xmm0
 mov     qword, ptr, [rbp, +, 96], r12
 movsd   qword, ptr, [rbp, +, 88], xmm8
 step.separate_with_commas());
 mov     rcx, rbx
 lea     rdx, [rbp, +, 96]
 call    thousands::traits::Separable::separate_with_commas
 println!("The sequence has converged: {}, {}, and {} give {} since step {}.",
 lea     rax, [rbp, +, 64]
 mov     qword, ptr, [rbp, -, 40], rax
 mov     qword, ptr, [rbp, -, 32], r13
 lea     rax, [rbp, +, 72]
 mov     qword, ptr, [rbp, -, 24], rax
 mov     qword, ptr, [rbp, -, 16], r13
 lea     rax, [rbp, +, 80]
 mov     qword, ptr, [rbp, -, 8], rax
 mov     qword, ptr, [rbp], r13
 lea     rax, [rbp, +, 88]
 mov     qword, ptr, [rbp, +, 8], rax
 mov     qword, ptr, [rbp, +, 16], r13
 mov     qword, ptr, [rbp, +, 24], rbx
 lea     rax, [rip, +, _ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h42eb0c9b680d32c8E]
 mov     qword, ptr, [rbp, +, 32], rax
     lea     rax, [rip, +, __unnamed_17]
     mov     qword, ptr, [rbp, -, 88], rax
     mov     qword, ptr, [rbp, -, 80], 6
     mov     qword, ptr, [rbp, -, 72], 0
     mov     qword, ptr, [rbp, -, 56], r14
     mov     qword, ptr, [rbp, -, 48], 5
 mov     rcx, r15
 call    std::io::stdio::_print
     mov     rdx, qword, ptr, [rbp, +, 48]
     test    rdx, rdx
     je      .LBB75_15
     mov     rcx, qword, ptr, [rbp, +, 40]
     test    rcx, rcx
     je      .LBB75_15
     mov     r8d, 1
     call    __rust_dealloc
     jmp     .LBB75_15
.LBB75_9:
 }
 movaps  xmm6, xmmword, ptr, [rbp, +, 112]
 movaps  xmm7, xmmword, ptr, [rbp, +, 128]
 movaps  xmm8, xmmword, ptr, [rbp, +, 144]
 movaps  xmm9, xmmword, ptr, [rbp, +, 160]
 movaps  xmm10, xmmword, ptr, [rbp, +, 176]
 movaps  xmm11, xmmword, ptr, [rbp, +, 192]
 add     rsp, 344
 pop     rbx
 pop     rdi
 pop     rsi
 pop     r12
 pop     r13
 pop     r14
 pop     r15
 pop     rbp
 ret
