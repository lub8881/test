#include <stdio.h>
#include <string.h>

int main()
{

char str[5][20];
char *ptr[5];
ptr[0] = str[0];
ptr[1] = str[1];
ptr[2] = str[2];
ptr[3] = str[3];
ptr[4] = str[4];
int i;
int min;
int a;
char *n;
char *m;

for(i=0;i<05;i++)
{
printf("word%d:",i);
fgets(str[i],sizeof(str[i]),stdin);
puts(str[i]);
}

for(a=0;a<5;a++)
{
 for(i=0;i<4-a;i++)
  {
   if(strncmp(ptr[i],ptr[i+1],1)>0) 
   {
    n = ptr[i]; m = ptr[i+1];
    ptr[i] = m; ptr[i+1] = n;
   }
   else 

  } 
}

for(i=0;i<5;i++)
 printf("%s",ptr[i]);


return 0;
}
