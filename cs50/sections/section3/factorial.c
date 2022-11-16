// calculate n! -- product of all integers from 1 to n

#include <cs50.h>
#include <stdio.h>

long factorial(long n);

int main(void)
{
    int n = get_int("Number: ");
    // limit n so that we don't overflow!
    if (n < 0 || n > 20)
    {
        printf("Please enter a number between 0 and 20\n");
        return 1;
    }
    printf("%i factorial is %li\n", n, factorial(n));
}

long factorial(long n)
{
    if (n == 0 || n == 1)
    {
        return 1;
    }
    return n * factorial(n - 1);
}