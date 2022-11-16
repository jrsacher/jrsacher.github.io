// binary search implemented recursively

#include <cs50.h>
#include <stdio.h>

bool search(int q, int low, int high);

int numbers[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24};
int steps = 0;

int main(void)
{
    int query = get_int("Number to find: ");

    if (search(query, 0, 24))
    {
        printf("Found in %i steps!\n", steps);
    }
    else
    {
        printf("Not found after %i steps.\n", steps);
    }
}

bool search(int q, int low, int high)
{
    if (high >= low)
    {
        steps++;
        int mid = (high + low) / 2;
        if (numbers[mid] == q)
        {
            return true;
        }
        else if (q > numbers[mid])
        {
            // search right half
            return search(q, mid + 1, high);
        }
        else
        {
            // search left half
            return search(q, low, mid - 1);
        }
    }
    else
    {
        return false;
    }
}