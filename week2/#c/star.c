#include <stdio.h>

int main()
{
 
 int a;
 int b;
 int i;
 printf("input a num");
 scanf("%d",&a);

// while(1)
//{
 for(;a>0;a--)
  for(i=1;i<=a;i++) 
   {
    printf("*");
    if(i==a)
    printf("\n");
   }
//  if(

return 0;
} 
