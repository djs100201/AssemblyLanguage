TITLE sogangcse20201546_AssemblyLanguage_Homework2
INCLUDE Irvine32.inc
INCLUDE CSE3030_PHW02.inc


comment @
	�ۼ���		: ��ȿ�� 
	�й�			: 20201546
	���			: ���� x1,x2,x3�� �־����� F=90*x1-30*x2+19*x3���� ����Ͽ� ���
	�Է�			: ���� x1,x2,x3�� CSE3030_PHW02.inc��� ���Ͽ��� .data�������� ������ �־���
	���			: ������ ����Ͽ� ���
	�˰���		: 90,30,19��� ������ 2������ 8bit���� ǥ���ϸ� 90�� 01011010, 30�� 00011110, 19�� 00010011 �̴�.
				  �̸� �̿��ؼ� 2�辿 ���ذ��� ���� ����ؼ� �������شٰ� ������, ����� N�̶�� �ϸ�, O(logN)�̶�� �ð����⵵�� 
				  ���ϱ� ������ ���� �������� ġȯ�� �� �ִ�. �̴� �ܼ��� N�� ���ϴ� �ͺ��� �ξ� ���� ����̴�.
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