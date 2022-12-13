#include <cs50.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct node
{
    int number;
    struct node *next;
} node;

int main(void)
{
    node *list = NULL;

    while (true)
    {
        // press ctrl-D to stop entering numbers!
        int x = get_int("Number: ");
        if (x == INT_MAX)
        {
            printf("\n");
            break;
        }

        // Allocate a new node and store x
        node *n = malloc(sizeof(node));
        n->number = x;
        n->next = NULL;

        // Add new node to linked list lowest to highest.
        // if new, number should be at very front of list:
        if (list == NULL || x < list->number)
        {
            n->next = list;
            list = n;
        }
        else
        {
            node *tmp = list;
            // go until x is less than the number at the following pointer
            // order is important here -- can't go to NULL->number
            while (tmp->next != NULL && x > tmp->next->number)
            {
                tmp = tmp->next;
            }
            // insert new node
            n->next = tmp->next; // point n at next node
            tmp->next = n;       // point current node at n
        }
    }

    // Print all nodes.
    for (node *tmp = list; tmp != NULL; tmp = tmp->next)
    {
        printf("%i\n", tmp->number);
    }
    // Free all nodes.
    node *ptr = list;
    while (ptr != NULL)
    {
        node *tmp = ptr;
        ptr = ptr->next;
        free(tmp);
    }
}
