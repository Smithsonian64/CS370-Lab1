#include <stdbool.h>

struct Node {
	int data;

	struct Node *next;

};

bool SameL(struct Node *L1, struct Node *L2) {

if((L1 == 0 && L2 != 0)||(L1 != 0 && L2 == 0))
	return false;

if(L1 == 0 && L2 == 0)
	return true;

return SameL(L1->next, L2->next);

}
