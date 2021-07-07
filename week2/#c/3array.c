#include <stdio.h>

int main()
{

 int arr[3][9][30];
 int i,a,b;
 int bnum,floor,rnum;

 for(a=1;a<=3;a++)
 { for(b=1;b<=9;b++)
  { for(i=1;i<=30;i++)
     arr[a][b][i] = a*1000+b*100+i; 
  }
 }

printf("input building num,floor,roomnum:");
scanf("%d",&bnum);
scanf("%d",&floor);
scanf("%d",&rnum);

printf("the home num = %d",arr[bnum][floor][rnum]);


return 0;
}

