function [ dn ] = nShiftDerivation( data,n )
%NSHIFTDERIVATION ���ڼ���data��ƫ��Ϊn�Ĳ��
%   �������� # ���� # ���� # ע��
%   data # N*M Mat # Nά���ݣ�ÿһά�����ڼ���nƫ���� # M>n
%   n # N*1 Mat # #
%   ������� # ���� # ���� # ע��
%   dn # N*(M-n) MAT # ��������Ĳ������ # ��M<=nʱ����Ϊ��
dataSize = size(data);
dn = [];
%% �ж������Ƿ����Ҫ��
if dataSize(2) == 1
    data = data';
    dataSize = [1,dataSize(1)];
end
if dataSize(2) <= n 
    return
end
%% ���� -- ǰn���
dn = data(:,1+n:end) - data(:,1:end-n);
dn = [zeros(dataSize(1),n) dn];
end

