#include <stdio.h>
#include <unistd.h>

void times_2(int x);

int main(void)
{
    int x = 2;
    printf("x is %i\n", x);
    sleep(1); // just for drama
    times_2(x);
    sleep(1);
    printf("x is %i\n", x);
}

void times_2(int x)
{
    x = x * 2;
    printf("x is %i\n", x);
}