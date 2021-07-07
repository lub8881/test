#include <stdio.h>

int main()
{
 int a;


 printf("please input the number:");
 scanf("%d",&a);
 
 if(1 <= a && a <= 100)
  {
   if(a%2==0)
    printf("multiples of 2\n");
   if(a%3==0)
    printf("multiples of 3\n");
   if(a%5==0)
    printf("multiples of 5\n");
   if(a%7==0)
    printf("multiples of 7\n");
  
  }
 else
  printf("input another num");
  
}    


