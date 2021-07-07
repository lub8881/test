#include <stdio.h>

int main()
{
 int num1,num2,mode;
 int answer;

 printf("num1, num2:");
 scanf("%d %d",&num1,&num2);
 printf("select calculate mode");
 scanf("%d",&mode);
 
 switch(mode)
 
 case 1: {answer = num1+num2;
          printf("answer = %d",answer);
         }
         break; 
 case 2: {answer = num1-num2;
          printf("answer = %d",answer);
         }
         break;
 case 3: {answer = num1*num2;
          printf("answer = %d",answer);
         }
         break;
 case 4: {answer = num1/num2;
          printf("answer = %d",answer);
         }
         break;    
  
}
 
