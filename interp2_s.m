function I2 = interp2_s(I,n)
    %��ȡԭͼ������سߴ�
    [rows,cols]=size(I);
    %Ϊ��ֵ���ͼƬ�����ڴ�
    I2=zeros(n*rows-n+1,n*cols-n+1);
    %��ֵ
    for i=1:rows
        for j=1:cols
            I2(n*i-n+1,n*j-n+1)=I(i,j);
        end
    end
    %˫���Բ�ֵ
    for i=1:n:n*rows-2*n+1
         for j=1:n:n*cols-n+1
              for k1=1:n-1
                  alpha=k1;
                  I2(i+k1,j)=I2(i,j)+alpha*(I2(i+n,j)-I2(i,j))/n;
              end
         end
    end
 
    for i=1:n*rows-n+1
        for j=1:n:n*cols-2*n+1
            for k2=1:n-1
                beta=k2;
                I2(i,j+k2)=I2(i,j)+beta*(I2(i,j+n)-I2(i,j))/n;
            end
        end
    end
    %������ֵ��double����תΪ8λ�޷�������
    I2=uint8(I2);
end

