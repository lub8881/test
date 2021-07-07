#include <stdio.h>



int main()
{
	int a[10][10];
	int i,j;
	FILE* fp = fopen("inputM.txt","w");

        for(i=0;i<10;i++)
         {
         for(j=0;j<10;j++)
          {
          a[i][j] = 1 ;
          }

         }


	for(i=0;i<10;i++)
	 {
         for(i=0;i<10;i++)
          {
          fprintf(fp,"%d ",a[i][j]);
          }

	 }


	fclose(fp);

	return 0;

}
