//
//  main.cpp
//  openImage
//
//  Created by Alex Gaskins on 2/17/22.
//

#include <iostream>
#include <opencv.hpp>

using namespace cv;
using namespace std;

int main(int argc, char** argv)
{
 // Read the image file
 Mat image = imread("/Users/Alex/Desktop/img.png");

 // Check for failure
 if (image.empty())
 {
  cout << "Could not open or find the image" << endl;
  cin.get(); //wait for any key press
  return -1;
 }

 String windowName = "Homework2"; //Name of the window

 namedWindow(windowName); // Create a window

 imshow(windowName, image); // Show our image inside the created window.

 waitKey(0); // Wait for any keystroke in the window

 destroyWindow(windowName); //destroy the created window

 return 0;
}
