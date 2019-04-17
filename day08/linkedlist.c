struct LinkedList {
    int value;
    struct LinkedList *next;
};

typedef struct LinkedList       LinkedList;

LinkedList *insertFrontLL(LinkedList *list, int item) {
    LinkedList *cell = malloc(sizeof(LinkedList));
    (*cell).value = item;
    (*cell).next = list;
    return cell;
}
