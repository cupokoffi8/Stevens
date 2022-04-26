import cv2
import numpy as np

image = cv2.imread('./input.png', flags=cv2.IMREAD_COLOR)

cv2.imshow('Input', image)

# Convolution to sharpen image
sharpen_filter = np.array([[-1, -1, -1], [-1, 9, -1], [-1, -1, -1]])
image_sharp = cv2.filter2D(image, -1, sharpen_filter)
cv2.imshow('Sharpened', image_sharp)
cv2.waitKey()
cv2.destroyAllWindows()
