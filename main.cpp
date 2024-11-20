#include <iostream>
#include "head/math.h"
#include "head/linklist.h"

int main()
{
	int a = 10;
	int b = 20;
	std::cout << max(a, b) << std::endl;
	std::cout << min(a, b) << std::endl;
	
	LinkList *p = new LinkList();
	delete p;
	return 0;
}
