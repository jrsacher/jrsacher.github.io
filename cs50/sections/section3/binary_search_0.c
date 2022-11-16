// binary search implemented with a for loop

#include <cs50.h>
#include <stdio.h>

int numbers[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24};

int main(void)
{
    int query = get_int("Number to find: ");

    int steps = 0;

    int low = 0;
    int high = 24;
    int mid;

    while (low <= high)
    {
        steps += 1;
        // get midpoint, check if number at that position matches
        mid = (high + low) / 2;
        if (query == numbers[mid])
        {
            printf("Found in %i steps!\n", steps);
            return 0;
        }
        // if not ...
        else if (query > numbers[mid])
        {
            // search right half with new "low" value
            low = mid + 1;
        }
        else
        {
            // search left half with new "high" value
            high = mid - 1;
        }
    }
    printf("Not found after %i steps :(\n", steps);
}