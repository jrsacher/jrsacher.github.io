#include <cs50.h>
#include <stdio.h>

int main(void)
{
    // Initialize variable to something outside acceptable range
    int number = -1;
    while (number < 1)
    {
        number = get_int("Enter a positive integer: ");
    }

    printf("You entered %i. Thanks!\n", number);
}