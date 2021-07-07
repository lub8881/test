#include <stdlib.h>
#include <stdio.h>
#include "bitmap.h"

int main()
{
	FILE* fp0 = fopen("lenna.bmp", "rb");
	
	BITMAPFILEHEADER fileheader;
	BITMAPINFOHEADER infoheader;
	RGBTRIPLE	 rgbtriple;
	fread(&fileheader,sizeof(BITMAPFILEHEADER), 1, fp0);
	fread(&infoheader,sizeof(BITMAPINFOHEADER), 1, fp0);
	fread(&rgbtriple,sizeof(RGBTRIPLE),1,fp0);
	int width  = infoheader.biWidth;
	int height = infoheader.biHeight; 
	int size   = width * height * 3;
	int i,j;

	unsigned char* data = (unsigned char*)malloc(size);
	fread(data,size,1,fp0);


 
	for(j=height-1;j>=0;j--)
	{for(i=0;i<width;i++)
	{
	 RGBTRIPLE* pi = (RGBTRIPLE *)(data+i*3+(j*3*width));
	 (*pi).rgbtGreen = 0;
	 (*pi).rgbtRed = 0;
	 
	}
	}

      



	FILE* fp  = fopen("lennab.bmp", "wb");
	fwrite(&fileheader,sizeof(BITMAPFILEHEADER), 1, fp);
        fwrite(&infoheader,sizeof(BITMAPINFOHEADER), 1, fp);
	fwrite(data,size,1,fp);

	

	fclose(fp);
        free(data);
        fclose(fp0);


	return 0;



}




