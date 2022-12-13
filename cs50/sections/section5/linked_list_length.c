/* Write a function that returns the length of a singly linked list.
 * Expected output:
 *     Making sure the list length is indeed 10...
 *     9 8 7 6 5 4 3 2 1 0
 *     good!
 */
// Josh's note: how do you know that DJM wrote this problem?

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

#define SIZE 10

typedef struct node
{
    // the value to store in this node
    int n;
    // the link to the next node in the list
    struct node *next;
} node;

node *head = NULL;

int length(void)
{
    int counter = 0;
    node *temp = head;
    while (temp != NULL)
    {
        printf("%i ", temp->n);
        temp = temp->next;
        counter++;
    }
    printf("\n");
    return counter;
}

int main(void)
{
    // create linked list
    for (int i = 0; i < SIZE; i++)
    {
        node *new = malloc(sizeof(node));
        // check to see if memory was indeed allocated
        if (new == NULL)
        {
            exit(1);
        }
        // set value
        new->n = i;
        // insert into front of linked list
        new->next = head;
        head = new;
    }

    printf("Making sure that list length is indeed %i...\n", SIZE);

    // test length function
    if (length() == SIZE)
    {
        printf("good!\n");
    }
    else
    {
        printf("...uh oh\n");
    }
}
