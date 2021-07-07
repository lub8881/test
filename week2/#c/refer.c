#include <stdio.h>
#include <string.h>

//int func(int *(m1)[4], int *(m2)[4]);

int main()
{

int a[4][4] = {{1,2,3,4},{1,2,3,4,},{1,2,3,4},{1,2,3,4}};
int b[4][4] = {{1,1,1,1},{2,2,2,2},{3,3,3,3},{4,4,4,4}};
int c[4][4];
int i;
int n;

int (*m1)[4] = a;
int (*m2)[4] = b;
int (*m3)[4] = c;


int d[4][4];






for(n=0;n<4;n++)
 for(i=0;i<4;i++)
  {
   
   {
   (*(m3+n))[i] =  (*(m2+n))[i] + (*(m1+n))[i];
//    printf("%d",c[n]c[i]);
   }

  }




for(n=0;n<4;n++)
 {for(i=0;i<4;i++)
   {printf("%d",c[n][i]);}
   printf("\n");
 }


return 0;
}

int func(int *(m1)[4], int *(m2)[4])
{
 
 
 int temp = *(m1)[4] + *(m2)[4];
 return temp;
  
}



