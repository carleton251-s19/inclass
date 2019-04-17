#include <stdio.h>
#include "linkedlist.c"

int main() {
    LinkedList *head = NULL;
    LinkedList *newHead =
        insertFrontLL(head, 12);
    newHead =
        insertFrontLL(newHead, 15);
    newHead =
        insertFrontLL(newHead, 3);
}
