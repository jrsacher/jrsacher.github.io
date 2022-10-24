#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int number;
    while (true)
    {
        number = get_int("Enter a positive integer: ");
        // Check value inside of loop, then break
        if (number > 0)
            break;
    }

    printf("You entered %i. Thanks!\n", number);
}