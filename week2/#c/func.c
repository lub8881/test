#include <stdio.h>
int add(int a, int b);
int sub(int a, int b);
int div(int a, int b);
int mul(int a, int b);

int main()
{

 int mode;
 int result;
 int num1,num2;

 printf("what type of calcul do you want?");
 printf("1=add, 2=sub, 3=div, 4=mul\n");
 scanf("%d",&mode);
 printf("num1:");
 scanf("%d",&num1);
 printf("num2:");
 scanf("%d",&num2);


 switch(mode)
 {
  case 1 : result = add(num1,num2);
           break;
  case 2 : result = sub(num1,num2);
           break;
  case 3 : result = div(num1,num2); 
           break;
  case 4 : result = mul(num1,num2);
           break;
 }
printf("answer = %d\n",result);

return 0;
}


int add(int a,int b)
{
 int result= a+b;
 return result;
}

int sub(int a,int b)
{
 int result= a-b;
 return result;
}

int div(int a,int b)
{
 int result= a/b;
 return result;
}

int mul(int a,int b)
{
 int result= a*b;
 return result;
}

