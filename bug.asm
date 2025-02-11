mov eax, [ebx+ecx*4] ;potential bug if ecx is too large, leading to out-of-bounds memory access
mov edx, [esi+edi*8] ;potential bug if edi is too large, leading to out-of-bounds memory access
mov al, [ebp+0x10] ;potential bug if ebp+0x10 is not aligned properly, leading to memory alignment error