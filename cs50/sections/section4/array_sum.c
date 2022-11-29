#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int n;
    printf("Number of elements in array: ");
    scanf("%i", &n);

    int *arr = malloc(n * sizeof(int));
    if (arr == NULL)
    {
        return 1;
    }

    for (int i = 0; i < n; i++)
    {
        printf("Element %i: ", i);
        scanf("%i", &arr[i]);
    }

    // make a copy of the integer pointer
    int *ptr = arr;

    // calculate the sum
    int sum = 0;
    for (int i = 0; i < n; i++)
    {
        sum += *arr;
        arr++;
    }
    printf("Sum: %i\n", sum);

    // free all allocated memory using the ORIGINAL address
    free(ptr);
}