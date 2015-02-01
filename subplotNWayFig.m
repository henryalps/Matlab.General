function subplotNWayFig(sigs,sigNames)
%% ��subplot����N·��ͬ���ź�
%   ������ �������� ����
%   sigs N*KnԪ����N*M���� ԭʼ����
%   sigNames N*KnԪ����N*M���� ��������
if nargin == 0
    return
else
    figure
    sigSize = size(sigs);
    %%�ж������Ǿ�����Ԫ����
    if sigSize(2)>1 %����
        tmp = sigs;
        sigs = cell(1,sigSize(1));
        for i=1:sigSize(1)
            sigs{i}=tmp(i,:);
        end
    end
    sigNum =sigSize(1);
    if sigNum>=6 %�������л���
        colNum = floor(sigNum/2);
        colNum = colNum + rem(sigNum,2);
        for i=1:sigNum
            subplot(colNum,2,i);
            plot(sigs{i});
            xlim([1,length(sigs{i})]);
            if nargin>1
                title(sigNames{i})
            end
        end
    else %���õ��л���
        for i=1:sigNum
            subplot(sigNum,1,i);
            plot(sigs{i});
            xlim([1,length(sigs{i})]);
            if nargin>1
                title(sigNames{i});
            end
        end
    end
end
        