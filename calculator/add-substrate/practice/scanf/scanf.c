#include<stdio.h>

int main() {
	int num;
	printf("整数を入力してください\n");
	scanf("%d", &num);
	printf("%d * %d = %d ですね。\n", num, num, num*num);
	return 0;
}
