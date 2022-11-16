// binary search implemented recursively

#include <cs50.h>
#include <stdio.h>

bool search(int query, int low, int high);

int numbers[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24};
int steps = 0;

int main(void)
{
    int query = get_int("Number to find: ");

    if (search(query, 0, 24))
    {
        printf("Found in %i steps!\n", steps);
        return 0;
    }

    printf("Not found after %i steps.\n", steps);
    return 1;
}

bool search(int query, int low, int high)
{
    if (high >= low)
    {
        steps++;
        // get midpoint, check if number at that position matches
        int mid = (high + low) / 2;
        if (numbers[mid] == query)
        {
            return true;
        }
        // if not ...
        else if (query > numbers[mid])
        {
            // search right half with new "low" value
            return search(query, mid + 1, high);
        }
        else
        {
            // search left half with new "high" value
            return search(query, low, mid - 1);
        }
    }
    else
    {
        return false;
    }
}