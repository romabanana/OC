.text
	li a1, 0x1 #a
	li a2, 0x2 #b
	li a3, 0x3 #c
	li a4, 0x4 #d
	li a5, 0x5 #e

#a	a = b;
	#add a1, a2, zero
#b	a = b + c;
	#add a1, a2, a3
#c	a = a + 1;
	#addi a1, a1, 1
#d	a = c + 2;
	#addi a3, a3, 2
	#add a1, a3, zero
#e	a = b + c + d + e;
	#add a3, a4, a5
	#add a1, a2 ,a3
#f	a = b - c;
	#sub a1, a2, a3
#g	a = c + (b - d);
	#sub t1, a2, a4
	#add a1, a3, t1
#h	a = (b + c) - (d + e);
	#add t0, a2, a3 
	#add t1, a4, a5
	#sub a1, t0, t1
#i 	a = b * c;
	mul a1, t2, t3
#j	a = b / c;
	div a1, t2, t3
#k	a = 3 * e;
	addi t0, zero, 3
	mul a1, a5, t0
#l	a = (b - c) * (d - e);
	sub t1, a2, a3
	sub t2, a4, a5
	mul a1, t1, t2
#m	a = b * c * d;
	mul t1, a4, a3
	mul a1, a2, t1
#n	a = (b + c) * (d / e)
	add t1, a2, a3
	div t2, a4, a5
	mul a1, t1, t2
