#include <stdio.h>

int main()
{
 int arr[10];
 int i,max,ave,min;
 int sum = 0;

 printf("input a num:");
 for (i=0;i<10;i++)
  {scanf("%d",&arr[i]);}

 for(i=0;i<10;i++)
  {
   if(i==0)
    max = arr[i];
   else if(max>=arr[i])
    max = max;
   else 
    max = arr[i];
   }
for(i=0;i<10;i++)
  {
   if(i==0)
    min = arr[i];
   else if(min<=arr[i])
    min = min;
   else
    min = arr[i];
   }


 for(i=0;i<10;i++)
 { sum = sum + arr[i];}

 ave= sum /10;

 printf("max = %d",max);
 printf("ave = %d",ave);
 printf("min = %d",min);
 printf("sum = %d",sum);
return 0;

}
