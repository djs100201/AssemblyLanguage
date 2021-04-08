TITLE sogangcse20201546_AssemblyLanguage_Homework2
INCLUDE Irvine32.inc
INCLUDE CSE3030_PHW02.inc


comment @
	작성자		: 강효규 
	학번			: 20201546
	기능			: 변수 x1,x2,x3가 주어지면 F=90*x1-30*x2+19*x3값을 계산하여 출력
	입력			: 변수 x1,x2,x3가 CSE3030_PHW02.inc라는 파일에서 .data형식으로 변수로 주어짐
	출력			: 수식을 계산하여 출력
	알고리즘		: 90,30,19라는 정수는 2진수로 8bit으로 표현하면 90은 01011010, 30은 00011110, 19는 00010011 이다.
				  이를 이용해서 2배씩 더해가는 값을 계속해서 갱신해준다고 했을때, 계수가 N이라고 하면, O(logN)이라는 시간복잡도에 
				  곱하기 연산을 덧셈 연산으로 치환할 수 있다. 이는 단순히 N번 더하는 것보다 훨씬 빠른 방법이다.
@

.code
main PROC
	mov eax,	x1		; eax = 1x1,	x1 = x1
	mov x1,		0		; eax = 1x1,	x1 = x1
	add eax,	eax		; eax = 2x1,	x1 = 0
	add x1,		eax		; eax = 2x1,	x1 = 2x1
	add eax,	eax		; eax = 4x1,	x1 = 2x1
	add eax,	eax		; eax = 8x1,	x1 = 2x1
	add x1,		eax		; eax = 8x1,	x1 = 10x1
	add eax,	eax		; eax = 16x1,	x1 = 10x1
	add x1,		eax		; eax = 16x1,	x1 = 26x1
	add eax,	eax		; eax = 32x1,	x1 = 26x1
	add eax,	eax		; eax = 64x1,	x1 = 26x1
	add x1,		eax		; eax = 64x1,	x1 = 90x1
			  
	mov eax,	x2		; eax = 1x2,	x2 = x2
	mov x2,		0		; eax = 1x2,	x2 = 0
	add eax,	eax		; eax = 2x2,	x2 = 0
	add x2,		eax		; eax = 2x2,	x2 = 2x2
	add eax,	eax		; eax = 4x2,	x2 = 2x2
	add x2,		eax		; eax = 4x2,	x2 = 6x2
	add eax,	eax		; eax = 8x2,	x2 = 6x2
	add x2,		eax		; eax = 8x2,	x2 = 14x2
	add eax,	eax		; eax = 16x2,	x2 = 14x2
	add x2,		eax		; eax = 16x2,	x2 = 30x2
			  
	mov eax,	x3		; eax = 1x3,	x3 = x3
	add eax,	eax		; eax = 2x3,	x3 = x3
	add eax,	eax		; eax = 4x3,	x3 = x3
	add eax,	eax		; eax = 8x3,	x3 = x3
	add eax,	eax		; eax = 16x3,	x3 = x3
	add eax,	x3		; eax = 17x3,	x3 = x3
	add eax,	x3		; eax = 18x3,	x3 = x3
	add eax,	x3		; eax = 19x3,	x3 = x3

	sub eax,	x2		; eax = 19x3 - 30x2,	x2 = 30x2
	add	eax,	x1		; eax = 1x3 +  90x1,	x1 = 90x1
	call WriteInt
	exit
main ENDP
END	main