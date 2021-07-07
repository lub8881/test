

void ave_pooling2x2(int* input, int* output, int x, int y)
{
	int new_x = x/2;
	int new_y = y/2;
	int a[new_x+new_y];
	int i,j;



         for(i=0;i<new_X;i++)
          {
          for(j=0;j<new_y;j++)
           {
           a[i*new_y+j] = (*(input+2*j)+*(input+2*j+1)+*(input+2*j+i*2*new_y)+*(input+2*j+i*2*new_y+1))/4 ;
           }

          }

	output = a;


}
