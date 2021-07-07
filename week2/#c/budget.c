#include <stdio.h>

int main()
{
 int budget;
 int price;
 int tprice;

 printf("input the budget\n");
 scanf("%d",&budget);


 while(1)
 {   
  printf("input price:\n");
  scanf("%d",&price);
  tprice = tprice + price;

  if(price < 0)
   {printf("input a positve num\n");
   continue; 
   }
  if(tprice > budget)
   {
    printf("over the budget. total price = %d\n",tprice);
   break;
    } 
  if(price==0)
   {
   printf("total prices = %d\n",tprice);
   break;
   }
 }

return 0;

}
