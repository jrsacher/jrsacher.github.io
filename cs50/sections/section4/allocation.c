#include <stdio.h>
#include <stdlib.h>
#include <unistd.h> // for sleep function

#define NUM_VALUES 1000

int main(void)
{
    printf("Simulating a long-running program\n");
    for (int i = 0; i < NUM_VALUES; i++)
    {
        int *x = malloc(NUM_VALUES * sizeof(int));
        for (int j = 0; j < NUM_VALUES; j++)
        {
            x[j] = rand();
        }
        free(x);
    }

    // use malloc, see what values exist
    printf("allocating memory using malloc\n");
    sleep(1);
    printf("printing all non-zero values:\n");
    int *n = malloc(NUM_VALUES * sizeof(int));
    for (int i = 0; i < NUM_VALUES; i++)
    {
        if (*(n + i) != 0)
        {
            printf("%i\n", *(n + i));
        }
    }
    free(n);
    printf("\n\n");

    // an alternative function, calloc, initializes all values to 0
    // Usage: calloc(number_of_items, size_of_item)
    printf("allocating memory using calloc\n");
    sleep(1);
    printf("printing all non-zero values:\n");
    int *m = calloc(NUM_VALUES, sizeof(int));
    for (int i = 0; i < NUM_VALUES; i++)
    {
        if (*(m + i) != 0)
        {
            printf("%i\n", *(m + i));
        }
    }
    free(m);
}
