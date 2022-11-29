#include <stdio.h>

int main(void)
{
    // Declare an integer without a value -- just like before
    int n;

    // Get the address of n, store it in an int pointer
    int *p_n = &n;

    // Check the (garbage) value currently at that location in memory
    printf("The value at address %p is currently %i\n", p_n, *p_n);
    // This is equivalent to:
    // printf("The value at address %p is currently %i\n", &n, n);

    // Go to the address, store a value there
    *p_n = 27;
    // This is equivalent to:
    // n = 27;

    // Check that the value was set correctly
    printf("The value at address %p is currently %i\n", p_n, *p_n);

    // Copy n to a new variable, just like we've done before
    int m = n;

    // Check the address of the new variable m, make sure it's different
    printf("n is at address %p and is currently %i\n", &n, n);
    printf("m is at address %p and is currently %i\n", &m, m);
}