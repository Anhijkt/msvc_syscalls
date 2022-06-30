.DATA
id DWORD 0
.CODE

syscall_handle PROC
mov	eax, id
mov	r10, rcx
syscall
ret 
syscall_handle ENDP


set_id PROC
mov id, ecx
ret
set_id ENDP

END