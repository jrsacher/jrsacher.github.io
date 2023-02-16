// Counts to 10 million and times it
// printing out every 1 million
// type "./count" to run
// type "make count" if you change the number

#include <stdio.h>
#include <time.h>

int main(void)
{
    // Record the start time
    clock_t start = clock();
    // Set our max number for counting
    int n = 10000000;
    // Loop through each number between 1 and n
    for (int i = 0; i < n; i++)
    {
        // "%" is "modulo" -- the remainder after division
        if (i % (n / 10) == 0)
        {
            // Show us where we are in the loop
            printf("%i\n", i);
        }
    }
    // Record the end time
    clock_t end = clock();
    // See how long it took
    printf("Time in C: %f seconds \n", (double)(end - start) / 1000000);
}
