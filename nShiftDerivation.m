function [ dn ] = nShiftDerivation( data,n )
%NSHIFTDERIVATION 用于计算data的偏差为n的差分
%   输入名称 # 类型 # 意义 # 注意
%   data # N*M Mat # N维数据，每一维都用于计算n偏差差分 # M>n
%   n # N*1 Mat # #
%   输出名称 # 类型 # 意义 # 注意
%   dn # N*(M-n) MAT # 数据求出的差分序列 # 当M<=n时返回为空
dataSize = size(data);
dn = [];
%% 判断输入是否符合要求
if dataSize(2) == 1
    data = data';
    dataSize = [1,dataSize(1)];
end
if dataSize(2) <= n 
    return
end
%% 求差分 -- 前n项补零
dn = data(:,1+n:end) - data(:,1:end-n);
dn = [zeros(dataSize(1),n) dn];
end

