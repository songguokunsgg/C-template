#include <iostream>
#include "linklist.h"

LinkList::LinkList() {
    this->key = 0;
    this->next = NULL;
    std::cout << "head init success" << std::endl;
}

LinkList::~LinkList() {
    std::cout << "destroyed" << std::endl;
}