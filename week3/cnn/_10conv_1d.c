#include <stdio.h>
#include <stdlib.h>
#include "input.h"
#include "filter.h"

void input(int pad, int *r, int x, int y);
void filter(int *r, int x, int y);



int main()
{
        int i,j,a,b,mi_i,mi_f,mf;
	int stride,padding,pooling;


	printf("input the size of input matrix ,input_x =\n");
	scanf("%d\n",&mi_i);
        printf("input the size of filter matrix ,filter_m =\n");
        scanf("%d\n",&mf);
	printf("input the stride:\n");
	scanf("%d",&stride);
	if(mf%2==0)
	{ printf("please input the odd number!!\n");
	  printf("input again:\n");
	  scanf("%d",&mf);
	}
	else
	 printf("filter number is stored\n");

	if(mi_i<10)
	 {if(mi_i%2!=0)
	  {mi_i = mi_i -1;
	   padding = (10-mi_i)/2;
	  }
 	  else
      	  padding = (10-mi_i)/2;	 
	 }
	else
	 padding = 0;
	 printf("inout number is stored\n");
//====================================input scanf====================================

//	int in[2*mi];
//	int filter[2*mf];
//	int out[mi-(mf-1)];

	int mi_f = mi_i+padding;

	int* in_p = (int *)malloc(sizeof(2*mi_f));
        int* filter_p = (int *)malloc(sizeof(2*mf));
	int* out_p = (int *)malloc(sizeof(int)*(mi_f-(mf-1)));	

	input(padding,in_p,mi_f,mi_f);
	filter(filter_p,mf,mf);






        for(i=0;i<mi_f-(mf-1);i++)
         {
         for(j=0;j<mi_f-(mf-1);j++)
          {
          *(out_p+i*(mi_f-(mf-1))+j) = 0 ;
          }

         }

//====================================initial====================================




        for(i=0;i<mi_f-(mf-1);i++)                                               
         {
         for(j=0;j<mi_f-(mf-1);j++)
          {
          for(a=0;a<mf;a++)
           {
                for(b=0;b<mf;b++)
                {
                 *(out_p+i*(mi_f-(mf-1))+j) = *(out_p+i*(mi_f-(mf-1))+j) + *(in_p+((i+a)*mi_f)+j+b)**(filter_p+a*mf+b) ;
                }
           }
          }

         }
















//==========================================process==========================================

        for(i=0;i<mi_f;i++)
         {
         for(j=0;j<mi_f;j++)
          {
        printf("%d ",*(in_p+i*mi_f+j));
          }
         printf("\n");
         }


        for(i=0;i<mf;i++)
         {
         for(j=0;j<mf;j++)
          {
        printf("%d ",*(filter_p+i*mf+j));
          }
          printf("\n");
         }

        for(i=0;i<mi_f-(mf-1);i++)
         {
         for(j=0;j<mi_f-(mf-1);j++)
          {
        printf("%d ",*(out_p+(i*(mi_f-(mf-1))+j));
          }
          printf("\n");
         }
//==========================================print==========================================




	free(in_p);
	free(filter_p);
	free(out_p);
	return 0;


}
