// 当たり前だのクラッカーだが、ポインタ変数pは、ポインタ先のとあるデータ型のアドレスを持っている。
// その、ポインタ変数pの&pとすると、それはポインタの
#include<stdio.h>
#include<stdlib.h>

int main() {
	char *p = "123,123,123";

	printf("value of p is : %p\n", p);
	printf("value of &p is : %p\n", &p);

	printf("value of strtol(p) is : %ld\n", strtol(p, &p, 10));
	printf("value of p is : %s\n", p);
	printf("value of p after strtol is : %p\n", p);
	printf("value of &p after strtol is : %p\n", &p);

	for (int i=0; i<3; i++) {
		p--;
	}
	printf("value of 3times p-- of p is: %s\n", p );

	return 0;
}
