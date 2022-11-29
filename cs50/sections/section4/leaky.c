#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int *i = malloc(sizeof(int));
    int *j = malloc(sizeof(int));
    int *k = malloc(sizeof(int));
    *i = 1;
    *j = 2;
    *k = 3;

    i = malloc(sizeof(int));
    *i = 4;

    free(i);
    free(j);
}