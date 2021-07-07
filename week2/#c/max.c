#include <stdio.h>

int main()
{
 int a,b,c,d;
 int max; 
 printf("num\n");
 scanf("%d %d %d %d",&a,&b,&c,&d);
 
 max = (a>b)?(a>c?(a>d?a:d):(c>d?c:d)):(b>c?(b>d?b:d):(c>d?c:d));

 printf("max = %d\n",max);
 return 0;
}


