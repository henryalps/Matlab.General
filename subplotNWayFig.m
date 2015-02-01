function subplotNWayFig(sigs,sigNames)
%% 用subplot绘制N路不同的信号
%   参数名 参数类型 意义
%   sigs N*Kn元胞或N*M矩阵 原始数据
%   sigNames N*Kn元胞或N*M矩阵 数据名称
if nargin == 0
    return
else
    figure
    sigSize = size(sigs);
    %%判断输入是矩阵还是元胞组
    if sigSize(2)>1 %矩阵
        tmp = sigs;
        sigs = cell(1,sigSize(1));
        for i=1:sigSize(1)
            sigs{i}=tmp(i,:);
        end
    end
    sigNum =sigSize(1);
    if sigNum>=6 %采用两列绘制
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
    else %采用单列绘制
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
        