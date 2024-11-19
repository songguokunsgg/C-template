#include <stdio.h>
#include "head/math.h"
#include "head/linklist.h"
int main()
{
	int a = 10;
	int b = 20;
	printf("max=%d\n", max(a, b));
	printf("min=%d\n", min(a, b));
	linklist_init();
	return 0;
}
