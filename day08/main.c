#include <stdio.h>
#include "linkedlist.h"
#include "linkedlist.h"

int main() {
    LinkedList *head = NULL;
    LinkedList *newHead =
        insertFrontLL(head, 12);
    newHead =
        insertFrontLL(newHead, 15);
    newHead =
        insertFrontLL(newHead, 3);

    cleanupLL(newHead);
}
