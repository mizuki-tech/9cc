//strtol()は、文字列を長整数に変換するC言語の標準ライブラリ関数。
//long strtol(const char *nptr, char **endptr, int base );
//第一引数nptr, 変換したい文字列、
//第二引数変換が停止した位置を格納するポインタ
//第三引数base 基数
//

#include<stdio.h>
#include<stdlib.h>

int main() {
	printf("10進数%ld\n", strtol("1010", NULL, 10));

	char *p = "123,123,123";
	// 123を表示する
	printf("%ld\n", strtol(p, NULL, 10));
	// "123,123,123"を表示する
	printf("%s\n", p);
	printf("%p\n", &p);
	printf("%ld\n", strtol(p, &p, 10));
	printf("%s\n", p);

	return 0;
}
