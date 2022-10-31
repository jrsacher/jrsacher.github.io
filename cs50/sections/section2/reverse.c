#include <cs50.h>
#include <stdio.h>
#include <string.h>

void print_array(char c[]);

int main(void)
{
    string s = get_string("Text: ");
    int len = strlen(s);

    // Array for reversed word, initially fill with underscores
    char arr[len + 1];
    memset(arr, '_', len); // memset in string.h

    // Set string ending character for safety
    arr[len] = '\0';

    /* Choose one of the blocks below */
    // Choice 1
    for (int i = 0; i < len; i++)
    {
        arr[len - i - 1] = s[i];
        print_array(arr);
    }

    // Choice 2
    // for (int i = len - 1; i >= 0; i--)
    // {
    //     arr[i] = s[len - i - 1];
    //     print_array(arr);
    // }
}

void print_array(char c[])
{
    // shift output so it "lines up"
    printf("      ");
    int i = 0;
    while (c[i] != '\0')
    {
        printf("%c", c[i]);
        i++;
    }
    printf("\n");
}