clc;
clear;
%����ͼƬ
I1=imread('C:\Users\535756282\Desktop\����\WirelessUSG2021-05-18-16-59-41.png');
%��RGBͼתΪ�Ҷ�ͼ
I2=rgb2gray(I1);
%��matlab�ĺ�������˫���Բ�ֵ
I4=interp2(double(I2),2,'linear');
 %������ֵ��double����תΪ8λ�޷�������
I4=uint8(I4);
%���ú�������˫���Բ�ֵ
I5=interp2_s(I2,6);
%��ʾͼƬ
figure(1);
subplot(131);imshow(I2);title('ԭͼ');
subplot(132);imshow(I4);title('interp2������ֵ���ͼ��');
subplot(133);imshow(I5);title('�ñ�д��˫���Բ�ֵ�㷨��ֵ���ͼ��');




