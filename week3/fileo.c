#include <stdio.h>


int main()
{
int a[7];
int i;
FILE *fp;
FILE *fp1;

fp = fopen("arr.text","r");
fp1 = fopen("arr.text1","w"); 


for(i=0;i<7;i++)
 {fscanf(fp,"%d",&a[i]);}

for(i=0;i<7;i++)
 {printf("%d",a[i]);}

printf("\n");

for(i=0;i<7;i++)
 {fprintf(fp1,"%d ",a[i]);}


fclose(fp);






return 0;
}
                        

