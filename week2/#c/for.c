#include <stdio.h>

int main()
{
 int a=1;
 int i;
 int sum=0;
 int num=0;
 double mean=0; 

 for(i=0;a!=0;i++)
 {
  printf("input:");
  scanf("%d",&a);
  sum = sum + a;
  num = num + 1;
 }
 mean = (double)sum/(double)(num-1);
 printf("%s = %d, %s = %d, %s = %.4f\n","num",num-1,"sum",sum,"mean",mean);


 return 0;
} 
