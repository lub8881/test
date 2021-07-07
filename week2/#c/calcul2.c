#include <stdio.h>

int main()
{
 int a;
 int b;
 int c;
 int i;

 printf("number1:");
 scanf("%i",&a);
 printf("number2:");
 scanf("%i",&b);
 
 for(i=0;i<=7;i=i+1)
  {
   printf("%i = %i\n",1,1<<i);
  } 

 printf("%i*8 = %i\n",a,a<<3);
 printf("%i/4 = %i\n",b,b>>2);
 return 0;

}
