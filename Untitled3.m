%%把数据分为两部分：训练数据、测试数据
clear;
%参数初始化
datafile='C:\Users\17849\Desktop\新建文件夹\上机实验-水色图片\data\moment.xls';%数据文件
trainfile='C:\Users\17849\Desktop\新建文件夹\上机实验-水色图片\data\切割后图像\train_moment.xls';%训练数据文件
testfile='C:\Users\17849\Desktop\新建文件夹\上机实验-水色图片\data\切割后图像\test_moment.xls';%测试数据文件
proportion=0.8;%设置训练数据比例

%%数据分割
[num,txt]=xlsread(datafile);
%split2train_test为自定义函数，把num变量数据（按行分布）分为两部分
%其中训练数据集占比proportion
[train,test]=split2train_test(num,proportion);

%%数据储存
xlswrite(trainfile,[txt;num2cell(train)]);%写入训练数据
xlswrite(testfile,[txt;num2cell(train)]);%写入测试数据
disp('数据分割完成!');