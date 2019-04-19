#include <stdio.h>
#include <stdlib.h>

int main() {
    char word[4];
    word[0] = 'c';
    word[1] = 'a';
    word[2] = 't';
    word[3] = '\0';

    printf("%s\n",word);

    printf("%s\n", "dog");

    char *fido = "dog";
    printf("%s\n", fido);
    fido[0] = 'h';
    
}
