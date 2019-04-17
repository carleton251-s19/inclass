#include <stdlib.h>
typedef struct LinkedList       LinkedList;

struct LinkedList {
    int value;
    LinkedList *next;
};


LinkedList *insertFrontLL(LinkedList *list,
                          int item) {
    LinkedList *cell = malloc(sizeof(LinkedList));
    (*cell).value = item;
    (*cell).next = list;
    return cell;
}
