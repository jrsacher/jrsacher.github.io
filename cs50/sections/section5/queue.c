/*
modified from https://www.codesdope.com/blog/article/making-a-queue-using-linked-list-in-c/
*/
#include <stdio.h>
#include <stdlib.h>

// limits the size of the queue
#define FULL 10

typedef struct node
{
    int value;
    struct node *next;
} node;

typedef struct queue
{
    int count; // for convenience
    node *front;
    node *rear;
} queue;

void initialize(queue *q)
{
    q->count = 0;
    q->front = NULL;
    q->rear = NULL;
}

int isempty(queue *q)
{
    return (q->rear == NULL);
}

void enqueue(queue *q, int value)
{
    if (q->count >= FULL)
    {
        printf("List is full\n");
        return;
    }

    // Create a new node and set values
    node *tmp = malloc(sizeof(node));
    tmp->value = value;
    tmp->next = NULL;

    // Add the new node to the queue
    if (!isempty(q))
    {
        q->rear->next = tmp;
        q->rear = tmp;
    }
    else
    {
        q->front = q->rear = tmp;
    }
    q->count++;
}

int dequeue(queue *q)
{
    // get the value at the front of the queue
    int n = q->front->value;
    // temporary pointer for freeing
    node *tmp = q->front;
    // move front to next in queue
    q->front = q->front->next;
    free(tmp);
    q->count--;
    return (n);
}

void display(node *head)
{
    if (head == NULL)
    {
        printf("NULL\n");
    }
    else
    {
        printf("%i\n", head->value);
        display(head->next);
    }
}

int main()
{
    // Make a queue
    queue *q = malloc(sizeof(queue));
    initialize(q);
    // Add a few items
    enqueue(q, 10);
    enqueue(q, 20);
    enqueue(q, 30);
    // Show the queue
    printf("Queue before dequeue contains %i items:\n", q->count);
    display(q->front);
    // Remove the first item
    int n = dequeue(q);
    printf("%i was dequeued\n", n);
    printf("Queue after dequeue contains %i items:\n", q->count);
    display(q->front);

    // free up memory
    while (q->front != NULL)
    {
        dequeue(q);
    }
    free(q);

    return 0;
}