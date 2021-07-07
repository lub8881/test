#include <stdio.h>
#include <string.h>

void func(int *t ,int *m, int *n);

int main()
{

int a[4][4] = {{1,2,3,4},{1,2,3,4,},{1,2,3,4},{1,2,3,4}};
int b[4][4] = {{1,1,1,1},{2,2,2,2},{3,3,3,3},{4,4,4,4}};
int c[4][4];
int i;
int j;

int *m1 = (int *)a;
int *m2 = (int *)b;
int *m3 = (int *)c;


int d[4][4];


func(m3,m2,m1);





for(i=0;i<4;i++)
 {for(j=0;j<4;j++)
   {printf("%d",c[i][j]);}
   printf("\n");
 }


return 0;
}

void func(int *t ,int *m, int *n)
{
 
 int j,i;

for(i=0;i<4;i++)
 for(j=0;j<4;j++)
  {

   {
   *(t + i*4 + j) = *(m + i*4 + j) + *(n + i*4 + j);
   }

  }

  
}



