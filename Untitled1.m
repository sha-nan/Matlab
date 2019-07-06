%%单个图像切割
clear;
%参数初始化
sourcefile='C:\Users\17849\Desktop\新建文件夹\上机实验-水色图片\data\images\';%原始图像路径名称
destfile='C:\Users\17849\Desktop\新建文件夹\上机实验-水色图片\data\切割后图像\';%切割后图像路径名称
files = dir(sourcefile);
%%读取图像并截取
for i=1:length(files)
image_i=imread([ sourcefile files(i).name]);
[width,length,z]=size(image_i);
subimage=image_i(fix(width/2)-50:fix(width/2)+50,fix(length/2)-50:fix(length/2)+50,:);

%%保存切割后的数据
imwrite(subimage,destfile[ sourcefile files(i).name]);
disp([sourcefile ' 图片num(i)分割完成 ' ]);  
end