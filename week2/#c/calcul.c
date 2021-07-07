#include <stdio.h>

int main()
{
 int a;
 int b;
 //double c =(double)a/b;
 
 printf("number1:");
 scanf("%d",&a);
 printf("number2:");
 scanf("%d",&b);

 printf("%d + %d = %d\n",a,b,a+b);
 printf("%d - %d = %d\n",a,b,a-b);
 printf("%d * %d = %d\n",a,b,a*b);
 printf("%d / %d = %f\n",a,b,(double)a/b);
 return 0;

}
