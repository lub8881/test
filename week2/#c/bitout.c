#include <stdio.h>

int main()
{

int a;
int i;
unsigned int n;
int e=32;
int x=0;
//int arr[32];

printf("input:\n");
scanf("%d",&a);


n = 1<<(31);


for(i=0;i<32;i++)
 {
 
//  (a&n)?1:0  ;
  
  printf("%d",(a&n)?1:0 );
  n = n>>1;
  //printf("%d\n",n);
 }






return 0;
}

