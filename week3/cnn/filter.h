

void filter(int *r, int x, int y)
{
	int a[x+y];
	int i,j;
	FILE* fp = fopen("filterM.txt","w");

        for(i=0;i<x;i++)
         {
         for(j=0;j<y;j++)
          {
          a[i*y+j] = i-j ;
          }

         }


	for(i=0;i<x;i++)
	 {
         for(i=0;i<y;i++)
          {
          fprintf(fp,"%d ",a[i*y+j]);
          }

	 }

	r = a;

	fclose(fp);

}
