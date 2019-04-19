#include <stdio.h>
#include <stdlib.h>

char *makeArrayOfSize10() {
    // how do I know it is 10 long?
    // I don't. I'm out of time. Fix me.
    char *newWord = malloc(10*sizeof(int));
    newWord[0] = 'e';
    return newWord;
}
     
int main() {
    char word[4];
    word[0] = 'c';
    word[1] = 'a';
    word[2] = 't';
    word[3] = '\0';

    printf("%s\n",word);

    printf("%s\n", "dog");

    char *theNewArray = makeArrayOfSize10();
    printf("%c\n",theNewArray[0]);
    /* char *fido = "dog"; */
    /* printf("%s\n", fido); */
    /* fido[0] = 'h'; */
    /* free(fido); */
    
}
