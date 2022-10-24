#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int n;
    n = get_int("Enter the letter grade you got, between A and D: ");

    switch(n)
    {
        case 'A':
            printf("Fantastic job!\n");
            break;
        case 'B':
            printf("Really good grasp of the material\n");
            break;
        case 'C':
            printf("Solid, but could have studied a little harder\n");
            break;
        case 'D':
            printf("Hmm, you should definitely devote more time to this class\n");
            break;
        default:
            printf("Please enter a valid grade (A, B, C or D)\n");
    }
}