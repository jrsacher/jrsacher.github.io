#include <cs50.h>
#include <stdio.h>

void multiply(int x, int y);

int main(void)
{
    int x = get_int("x: ");
    int y = get_int("y: ");
    multiply(x, y);
}

void multiply(int x, int y)
{
    printf("%i\n", x * y);
}
