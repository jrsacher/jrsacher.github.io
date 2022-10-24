#include <cs50.h>
#include <math.h>
#include <stdio.h>
int main(void)
{int a; do{a=get_int("Integer: ");}while(a<=2);
int b=1000;
while(a<b){a=sqrt(pow(a,3));printf("%i\n",a);}}