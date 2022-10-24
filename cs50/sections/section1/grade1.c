#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int n;
    n = get_int("Enter a valid grade (between 60 and 100): ");

    // Note: What's missing here? Why is okay in this case?
    if (n >= 90)
        printf("You got an A!\n");
    else if (n >= 80)
        printf("You got a B!\n");
    else if (n >= 70)
        printf("You got a C!\n");
    else
        printf("You got a D!\n");
}