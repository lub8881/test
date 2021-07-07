

void input(int pad, int *r, int x, int y)
{
	int a[x+y];
	int i,j;
	FILE* fp = fopen("inputM.txt","w");

	if(pad==0)
	{
         for(i=0;i<x;i++)
          {
          for(j=0;j<y;j++)
           {
           a[i*y+j] = 1 ;
           }

          }
	}

	else
	{
	
	 for(i=0;i<x;i++)
          {
          for(j=0;j<y;j++)
           {
	   if(i<pad || j<pad)
            a[i*y+j] = 0 ;
	   else
	    a[i*y+j] = 1 ;
           }

          }
	}





	for(i=0;i<x;i++)
	 {
         for(j=0;j<y;j++)
          {
          fprintf(fp,"%d ",a[i*y+j]);
          }

	 }

        r = a;

	fclose(fp);

}
