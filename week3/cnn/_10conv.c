#include <stdio.h>
#include <stdlib.h>


int main()
{
	int in[10][10];
	int filter[3][3];
	int out[8][8];
	int i,j,a,b;


        for(i=0;i<8;i++)
         {
         for(j=0;j<8;j++)
          {
          out[i][j] = 0 ;
          }
         
         }
	

        for(i=0;i<10;i++)
         {
         for(j=0;j<10;j++)
          {
          in[i][j] = 1 ;
          }
         
         }

        for(i=0;i<3;i++)
         {
         for(j=0;j<3;j++)
          {
          filter[i][j] = i+j ;
          }
         
         }


        for(i=0;i<8;i++)
         {
         for(j=0;j<8;j++)
          {
	  for(a=0;a<3;a++)
           {
		for(b=0;b<3;b++)
		{
		 out[i][j] = out[i][j] + in[i+a][j+b]*filter[a][b] ;
		}
	   }
          }
        
         }



        for(i=0;i<10;i++)
         {
         for(j=0;j<10;j++)
          {
        printf("%d ",in[i][j]);
          }
         printf("\n");
         }

        for(i=0;i<3;i++)
         {
         for(j=0;j<3;j++)
          {
        printf("%d ",filter[i][j]);
          }
	  printf("\n");
         }
        
        for(i=0;i<8;i++)
         {
         for(j=0;j<8;j++)
          {
        printf("%d ",out[i][j]);
          }
	  printf("\n");
         }
        






	return 0;
}
