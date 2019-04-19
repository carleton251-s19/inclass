#include <stdlib.h>
#include "linkedlist.h"

LinkedList *insertFrontLL(LinkedList *list,
                          int item) {
    LinkedList *cell = malloc(sizeof(LinkedList));
    //(*cell).value = item;
    cell -> value = item;
    //(*cell).next = list;
    cell -> next = list;
    return cell;
}
