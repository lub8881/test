#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void func(int *t ,int *m, int *n);

int main()
{

int a[4][4] = {{1,2,3,4},{1,2,3,4,},{1,2,3,4},{1,2,3,4}};
int b[4][4] = {{1,1,1,1},{2,2,2,2},{3,3,3,3},{4,4,4,4}};
//int c[4][4];
int i;
int j;

int *m1 = (int *)a;
int *m2 = (int *)b;
int *m3 = (int *)malloc(sizeof(a));


//int d[4][4];


func(m3,m1,m2);

for(i=0;i<16;i++)
 { 
  
    printf("%d",*(m3+i));
   
   if(i%4==3) 
    printf("\n"); 

 }



//for(i=0;i<4;i++)
// {for(j=0;j<4;j++)
//   {printf("%d ",c[i][j]);}
//   printf("\n");
// }

free(m3);

return 0;
}

void func(int *t ,int *m, int *n)
{
 
 int a,j,i;
 int sum;
for(i=0;i<4;i++)
 for(j=0;j<4;j++)
  {
   sum = 0;
   for(a=0;a<4;a++)
   {
    sum = sum +  *(m + i*4 + a) * *(n + a*4 + j);
    *(t + i*4 + j) = sum; 
   }
  }

}



