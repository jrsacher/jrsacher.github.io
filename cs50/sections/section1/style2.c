#include <cs50.h>
#include <math.h>
#include <stdio.h>

// Set upper limit
#define LIMIT 1000

int main(void)
{
    // Get number from user checking to avoid infinite loops, imaginary numbers
    int num = -1;
    while(num <= 2)
    {
        num = get_int("Integer: ");
    }
    // Take the square root of the number cubed, round, then re-assign to "number"
    while(num < LIMIT)
    {
        num = round(sqrt(pow(num, 3)));
        printf("%i\n", num);
    }
}