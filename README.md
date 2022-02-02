# Bottles-recognition

## Aim

Calculating how many bottles there are in each crate. The program takes the images of the crates as input. There are mainly three different types of bottles need to detect separately.

First, small circle bottles, including hollow(dark) and solid(bright) ones,
![image](https://user-images.githubusercontent.com/34623632/152093894-34579978-137e-493c-a169-cda49a343360.png)

Second, the bottom of bottles, also shown in image as large circle,
![image](https://user-images.githubusercontent.com/34623632/152093963-715a526b-67cd-49fb-9e6a-ec8807f26096.png)

Third, irregular-placed bottles,

![image](https://user-images.githubusercontent.com/34623632/152094022-d714ceba-efe8-4d4d-93f4-2c6e3fe646b4.png)

## Some results
The detection of large circle and small circle bottles in MATLAB,
![image](https://user-images.githubusercontent.com/34623632/152094141-40136c2b-8b4a-45c3-bba5-b760a8dce0c8.png)


![image](https://user-images.githubusercontent.com/34623632/152095041-0b177c5b-eba5-4e68-950f-72899fb46bd7.png)


## Conclusion
Bottles’ number detection is a classic computer vision question. I think there are many different methods can solve this problem. For example, Sobel, Canny and Laplacian Edge detection. Meanwhile, MATLAB provides more ready-made methods to make the detection more convenient. However, I think the difficulty of this problems is how to detecting irregular-placed bottles. For example, in figure#10 and figure #15. My idea is based on the area of those bottles. If the area matches the size of bottles, or the value is in the range of irregular-placed bottles’ area, it can be regard as bottle. The advantage of this method is can detecting all irregular bottles. On the other hand, how to set the range correctly is also an empirical question.
