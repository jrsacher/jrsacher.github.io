#include <cs50.h>
#include <stdio.h>
#include <strings.h>

typedef struct
{
    string name;
    string city;
    string state;
    string country;
    string code;
} airport;

#define NUM_AIRPORTS 6

airport airports[NUM_AIRPORTS];

bool load_airports(void);

int main(void)
{
    if (!load_airports())
    {
        printf("error\n");
        return 1;
    }

    string code = get_string("Airport code: ");

    for (int i = 0; i < NUM_AIRPORTS; i++)
    {
        if (strcasecmp(code, airports[i].code) == 0)
        {
            printf(
                "%s is %s airport in %s, %s, %s\n",
                code, airports[i].name, airports[i].city,
                airports[i].state, airports[i].country);
            return 0;
        }
    }
    printf("Code %s not found.\n", airports[i].code)
}

bool load_airports(void)
{
    airports[0].name = "Dallas-Fort Worth";
    airports[0].city = "Dallas";
    airports[0].state = "Texas";
    airports[0].country = "USA";
    airports[0].code = "DFW";

    airports[1].name = "John F. Kennedy";
    airports[1].city = "New York";
    airports[1].state = "New York";
    airports[1].country = "USA";
    airports[1].code = "JFK";

    airports[2].name = "Reagan";
    airports[2].city = "Washington";
    airports[2].state = "D.C.";
    airports[2].country = "USA";
    airports[2].code = "IAD";

    airports[3].name = "Louis Armstrong";
    airports[3].city = "New Orleans";
    airports[3].state = "Louisiana";
    airports[3].country = "USA";
    airports[3].code = "MSY";

    airports[4].name = "Soekarno–Hatta";
    airports[4].city = "Tangerang";
    airports[4].state = "Banten";
    airports[4].country = "Indonesia";
    airports[4].code = "CGK";

    airports[5].name = "Ngurah Rai";
    airports[5].city = "Denpasar";
    airports[5].state = "Bali";
    airports[5].country = "Indonesia";
    airports[5].code = "DPS";

    return true;
}