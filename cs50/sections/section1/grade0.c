#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int n;
    n = get_int("Enter a valid grade (between 60 and 100): ");

    // TODO: fix the bug!
    if (n >= 90)
        printf("You got an A!\n");
    if (n >= 80)
        printf("You got a B!\n");
    if (n >= 70)
        printf("You got a C!\n");
    if (n >= 60)
        printf("You got a D!\n");
}