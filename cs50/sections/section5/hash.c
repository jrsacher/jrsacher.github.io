#include <cs50.h>
#include <ctype.h>
#include <stdio.h>

#define N 1000000

// hash function described in http://www.cse.yorku.ca/~oz/hash.html
unsigned int hash(const char *str)
{
    unsigned int hash = 5381;
    char c;
    while ((c = *str++))
    {
        hash = ((hash << 5) + hash) + tolower(c);
    }
    return hash % N;
}

int main(void)
{
    char *s = get_string("Word: ");
    unsigned int h = hash(s);
    printf("%s was hashed to %i\n", s, h);
}