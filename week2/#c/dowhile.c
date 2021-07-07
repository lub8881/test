#include <stdio.h>

int main()
{
 int a;
 int sum=0;
 int num=0;
 double mean=0; 

 do
 {
  printf("input:");
  scanf("%d",&a);
  sum = sum + a;
  num = num + 1;
 }
 while(a!=0);
 mean = (double)sum/(num-1);
 printf("%s = %d, %s = %d, %s = %.4f\n","num",num-1,"sum",sum,"mean",mean);


 return 0;
} 
