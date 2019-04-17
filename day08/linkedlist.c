#include <stdlib.h>
typedef struct LinkedList       LinkedList;
struct LinkedList {
    int value;
    struct LinkedList *next;
};


LinkedList *insertFrontLL(LinkedList *list,
                          int item) {
    LinkedList *cell = malloc(sizeof(LinkedList));
    (*cell).value = item;
    (*cell).next = list;
    return cell;
}
