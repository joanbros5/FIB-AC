 .text
	.align 4
	.globl Ordenar
	.type Ordenar,@function
Ordenar:
        # Aqui viene vuestro codigo
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp

	pushl %ebx				# Guardamos registros seguros
	pushl %esi
	
	movl $0, %eax				# i = 0  -> eax
	movl 8(%ebp), %ecx			# v[0] -> ecx
	imul $12, %eax, %edi
for1:	cmpl $0x80000000, 4(%ecx,%edi)	# v[i].k comp con ese número
	je fifor1
	movl %eax, %ebx    #i --> ebx
	incl %ebx			# j = i+1 -> ebx
	imul $12, %ebx, %edx
	cmpl $0x80000000, 4(%ecx, %edx)	# v[j].k comp con ese número
	je fifor2
	
for2:   cmpl 4(%ecx,%edi), 4(%ecx,%edx)
	jle finif

	pushl %ecx				#guardamo en la pila
	movl %eax, %esi
	pushl %esi
	pushl %ebx

	call Intercambiar			#llamamos Intercambiar
	addl $12, %esp

finif:  incl %ebx				# i++
	jmp for2
	
		
fifor2: incl %eax				# i++
	jmp for1
							
fifor1: movl %esi, %eax				#pasamos i a eax
	popl %ebx
	popl %esi
	popl %ecx
	movl %ebp, %esp
	popl %ebp
	ret





