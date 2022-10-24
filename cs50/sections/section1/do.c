#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int number;
    do
    {
        number = get_int("Enter a positive integer: ");
    }
    while (number < 1);

    printf("You entered %i. Thanks!\n", number);
}