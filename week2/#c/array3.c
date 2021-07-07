#include <stdio.h>

int main()
{

 int arr[3][9][30];
 int i,a,b;
 int num = 0;
 int bnum,floor,rnum;

 for(a=0;a<3;a++)
 { for(b=0;b<9;b++)
  { for(i=0;i<30;i++)
     arr[a][b][i] = (a+1)*1000+(b+1)*100+(i+1);
  }
 }

 printf("matrix/bnum(3)/floor(7):\n");
 for(i=0;i<30;i++)
  printf("%d\n",arr[2][6][i]);





 printf("input building num,floor,roomnum:");
 scanf("%d",&bnum);
 scanf("%d",&floor);
 scanf("%d",&rnum);

 printf("the home num = %d",arr[bnum-1][floor-1][rnum-1]);


return 0;
}

