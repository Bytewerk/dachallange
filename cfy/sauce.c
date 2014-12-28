#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define n 1024
char buf[n];

int64_t from_hex(char *s) {	return strtoll(s, 0, 16); }
int64_t from_dec(char *s) {	return strtoll(s, 0, 10); }
int64_t from_ptr(char *s) { return **(int64_t **)s; }

struct parser {
	int64_t (*parser)(char *);
	char *desc;
} parsers[3] = {
	{ from_hex, "parse from hex" },
	{ from_dec, "parse from dec" },
	{ from_ptr, "parse from pointer" },
};

void print_fn_choice() {
	for(int i = 0; i < 3; i++) {
		printf("%d) %s\n", i, parsers[i].desc);
	}
	printf("%d) quit\n", 3);
}

int main() {
	int choice;
	long long unsigned result;

	while(1) {
		print_fn_choice();
		fgets(buf, n, stdin);
		if(sscanf(buf, "%d", &choice) != 1) {
			puts("sscanf failed");
			break;
		}

		if(choice == 3) {
			break;
		}

		printf("\nPlease enter your number: ");
		fflush(stdout);

		fgets(buf, n, stdin);
		
		result = parsers[choice].parser(buf);

		printf("dec: %lld\n", result);
		printf("hex: 0x%llx\n", result);
		puts("");
		fflush(stdout);
	}
	printf("okay bye\n");
}
