clc;
clear;
%导入图片
I1=imread('C:\Users\535756282\Desktop\超声\WirelessUSG2021-05-18-16-59-41.png');
%将RGB图转为灰度图
I2=rgb2gray(I1);
%用matlab的函数进行双线性插值
I4=interp2(double(I2),2,'linear');
 %将像素值的double类型转为8位无符号整型
I4=uint8(I4);
%调用函数进行双线性插值
I5=interp2_s(I2,6);
%显示图片
figure(1);
subplot(131);imshow(I2);title('原图');
subplot(132);imshow(I4);title('interp2函数插值后的图像');
subplot(133);imshow(I5);title('用编写的双线性插值算法插值后的图像');




