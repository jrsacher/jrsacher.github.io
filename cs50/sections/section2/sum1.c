// Implement a program to sum integers entered at the command line
// ex: "./sum1 1 2 3" should return "Sum: 6"

#include <cs50.h>
#include <stdlib.h> // atoi() function
#include <stdio.h>

int main(int argc, string argv[])
{
    int sum = 0;

    for (int i = 1; i < argc; i++)
    {
        // convert string (ASCII) to integer (*A* to *i*), add to sum
        sum += atoi(argv[i]);
    }

    printf("Sum: %i", sum);
}