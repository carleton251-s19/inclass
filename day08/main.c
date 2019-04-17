#include <stdio.h>
#include "linkedlist.c"

int main() {
    LinkedList *head = NULL;
    LinkedList *newHead =
        insertFrontLL(head, 12);
    newHead =
        insertFrontLL(head, 15);
    newHead =
        insertFrontLL(head, 3);
}
