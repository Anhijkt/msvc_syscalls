# msvc_syscalls
Library for syscalling in msvc, this project is port of [inline_syscall](https://github.com/JustasMasiulis/inline_syscall) to the
x64 msvc.By the default x64 msvc dont support inline assembly so this library use masm handler to perform syscalls.

## How to use
```cpp

NTSTATUS NtAllocateVirtualMemory(
	HANDLE    ProcessHandle,
	PVOID* BaseAddress,
	ULONG_PTR ZeroBits,
	PSIZE_T   RegionSize,
	ULONG     AllocationType,
	ULONG     Protect
);

jm::init_syscalls_list();

void* allocation = nullptr;
size_t size = 200;
NTSTATUS status = STATUS_PENDING;

status = SYSCALL(NtAllocateVirtualMemory)(
		(HANDLE)-1,
		&allocation,
		0,
		&size,
		MEM_RESERVE | MEM_COMMIT,
		PAGE_EXECUTE_READWRITE
		);
```

And remember to add masm in Solution Explorer!
