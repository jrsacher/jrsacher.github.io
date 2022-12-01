#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    // Get number of elements in array from the user
    int n;
    printf("Number of elements in array: ");
    scanf("%i", &n);

    // instead of doing a traditional array, let's use malloc just for fun!
    // int arr[n];
    int *arr = malloc(n * sizeof(int));
    if (arr == NULL)
    {
        return 1;
    }

    // Get the array values from the user
    for (int i = 0; i < n; i++)
    {
        printf("Element %i: ", i);
        scanf("%i", &arr[i]);
    }

    // make a copy of the integer pointer -- we'll need it later
    int *ptr = arr;

    // calculate the sum
    int sum = 0;
    for (int i = 0; i < n; i++)
    {
        // add the value at the address to the total
        sum += *arr;
        // move the pointer to the address of the next value in the array
        arr++;
    }
    printf("Sum: %i\n", sum);

    // free all allocated memory using the ORIGINAL address --
    // What happens if we run free(arr) instead?
    free(ptr);
}