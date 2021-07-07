#include <stdio.h>

int main()
{
int a[7];
int b[7] = {12,13,1,2,5,22,465};
int i;
FILE *fp;

fp = fopen("arr.text","r");

for(i=0;i<8;i++)
 {fscanf(fp,"%d",&a[i]);}

for(i=0;i<8;i++)
{printf("%d",a[i]);}

printf("\n");

//for(i=0;i<8;i++)
// {fprintf(fp,"%d",b[i]);}



fclose(fp);






return 0;
}
