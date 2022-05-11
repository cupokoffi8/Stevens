#include <iostream>
#include <math.h>
#include <opencv2/imgproc.hpp>
#include <opencv2/opencv.hpp>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

using namespace cv;
using namespace std;

int main(int argc, char *argv[]) {
	FILE *in, *out;
	int i, j, k, width, height;
	int **image_in, **image_out;

	if (argc < 3) {
		printf("ERROR: Insufficient parameters!\n");
		return (1);
	}

	/********************************************************************/
	/* Open CV                                                          */
	/********************************************************************/

	Mat M_in = imread(argv[1]);
	Mat_<uchar> M_in_g(M_in.rows, M_in.cols);


	cvtColor(M_in, M_in_g, COLOR_BGR2GRAY);

	String windowIn = "Input";
	namedWindow(windowIn);
	imshow(windowIn, M_in_g);
	waitKey(0);
	destroyWindow(windowIn);

	height = M_in_g.rows;
	width = M_in_g.cols;

	//End Open CV

	image_in = (int **)calloc(height, sizeof(int *));
	if (!image_in) {
		printf("Error: Can't allocate memmory!\n");
		return (1);
	}

	image_out = (int **)calloc(height, sizeof(int *));
	if (!image_out) {
		printf("Error: Can't allocate memmory!\n");
		return (1);
	}

	for (j = 0; j < height; j++) {
		image_in[j] = (int *)calloc(width, sizeof(int));
		if (!image_in[j]) {
			printf("Error: Can't allocate memmory!\n");
			return (1);
		}

		image_out[j] = (int *)calloc(width, sizeof(int));
		if (!image_out[j]) {
			printf("Error: Can't allocate memmory!\n");
			return (1);
		}
	}

	for (i = 0; i < height; i++)
		for (j = 0; j < width; j++)
			image_in[i][j] = M_in_g(i, j);


	/********************************************************************/
	/* Image Processing begins                                          */
	/********************************************************************/

	int Ti = 0;
	int T = 128;
	int a = 0;

	int sum1, sum2, num1, num2;

	for (i = 0; (i < 100) && !(abs(Ti - T) <= a); i++) 
	{
		Ti = T;
		sum1 = 0;
		sum2 = 0;
		num1 = 0;
		num2 = 0;
		for (j = 0; j < height; j++)
			for (k = 0; k < width; k++)
				if (image_in[j][k] < Ti) 
				{
					sum1 += image_in[j][k];
					num1++;
				} else 
				{
					sum2 += image_in[j][k];
					num2++;
				}
		T = (sum1 / num1 + sum2 / num2) / 2;
		cout << abs(Ti - T) << endl;
	}
	Ti = T;

	for (j = 0; j < height; j++)
		for (k = 0; k < width; k++) 
		{
			if (image_in[j][k] < Ti) 
				image_out[j][k] = 0;
			else 
				image_out[j][k] = 255;
		}

	/********************************************************************/
	/* Image Processing ends                                            */
	/********************************************************************/

	//*
	Mat_<uchar> M_out(height, width);
	for (i = 0; i < height; i++)
		for (j = 0; j < width; j++)
			M_out[i][j] = image_out[i][j];

	String windowOut = "Output";
	namedWindow(windowOut);
	imshow(windowOut, M_out);
	waitKey(0);
	destroyWindow(windowOut);

	bool isSuccess = imwrite(argv[2], M_out);
	if (!isSuccess) {
		cout << "Failed to write out file";
		return -1;
	}


	for (j = 0; j < height; j++) {
		free(image_in[j]);
		free(image_out[j]);
	}
	free(image_in);
	free(image_out);

	return 0;
}
