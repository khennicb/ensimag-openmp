#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

uint64_t fibo(uint64_t n) {
	if (n < 2) {
		return 1;
	}
	uint64_t n1;
	uint64_t n2;

	n1 = fibo(n-1);
	n2 = fibo(n-2);

	return n1 + n2;
}

int main(int argc, char **argv) {
	assert(argc == 2);
	printf("%Ld\n", fibo(atoi(argv[1])));
}
