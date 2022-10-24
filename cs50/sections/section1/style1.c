#include <cs50.h>
#include <math.h>
#include <stdio.h>

// Program to repeatedly do math on a number
int main(void)
{
    // Variable to store number
    int user_number;

    // Run at least once!
    do
    {
        // Gets integer from user
        user_number = get_int("Integer: ");
    }
    // Check that number is 3 or greater because 0, 1, and 2 cause an infinite loop and negative numbers give imaginary square roots
    while (user_number <= 2);

    // Set upper stopping point for math
    int UpperStoppingPoint = 1000;

    // Get number ready for math
    int number = user_number;

    // Run until stopping point is passed
    while(number < UpperStoppingPoint)
    {
        // Take the square root of the number cubed, then re-assign to "number"
        // sqrt() and pow() in <math.h>. Found instructions in CS50 Reference
        // Force rounding via integer division
        number = sqrt(pow(number, 3));
        // Print each iteration
        printf("%i\n", number);
    }
}