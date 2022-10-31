#include <cs50.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    string s = "Hello";

    // Play with "i < len" portion to see out-of-bounds issues
    // Try "i <= len" or "i < len + 10"
    for (int i = 0, len = strlen(s); i < len; i++)
    {
        printf("%c\n", s[i]);
    }
}
