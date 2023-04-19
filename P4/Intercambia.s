 .text
	.align 4
	.globl Intercambiar
	.type Intercambiar,@function
Intercambiar:
        # Aqui viene vuestro codigo
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp

	movl 12(%ebp), %eax		# i --> eax
	imul $12, %eax			# eax * 12 (i*12)
	addl 8(%ebp), %eax		# v0 + i*12
	movb (%eax), %dl		# v[i].c --> dl
	movb %dl, -12(%ebp)     # s = dl

	movl 16(%ebp), %ebx		# j --> ebx
	imul $12, %ebx			# ebx * 12 (j*12)
	addl 8(%ebp), %ebx		# v0 + j*12
	movb (%ebx), %dl		# v[j].c --> dl
	movb %dl, (%eax)        # v[i].c = dl

	movb -12(%ebp), %dl	    # s --> dl
    movb %dl, (%ebx)        # v[j].c = dl
	
                            #v[i].k está a +4(eax)
                            #v[j].k está a +4(ebx)

	movl 4(%eax), %ecx		# v[i].k --> ecx
	movl %ecx, -4(%ebp)     # tmp = ecx
	movl 4(%ebx), %ecx     	# v[j].k --> ecx
	movl %ecx, 4(%eax)      # v[i].k = ecx
	movl -4(%ebp), %ecx 	# tmp --> ecx
	movl %ecx, 4(%ebx)      # v[j].k = ecx

                            # v[i].m está a +8(eax) y
                            # v[j].m está a +8(ebx)

	movl 8(%eax), %ecx 		# v[i].m --> ecx
	movl %ecx, -8(%ebp)     # aux = ecx
	movl 8(%ebx), %ecx	    # v[j].m --> ecx
	movl %ecx, 8(%eax)      # v[i].m = ecx
	movl -8(%ebp), %ecx		# aux --> ecx
	movl %ecx, 8(%ebx)      # v[j].m = ecx


	addl $12, %esp
	movl %ebp, %esp
	popl %ebp
	ret
