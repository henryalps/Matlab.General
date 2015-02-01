function subplotNWayFig(sigs,sigNames)
if nargin == 0
    return
else
    figure
    sigNum = length(sigs);
    if sigNum>=6 %���ö��л���
        colNum = floor(sigNum/2);
        colNum = colNum + rem(sigNum,2);
        for i=1:sigNum
            subplot(colNum,floor((i+1)/2),rem(i,3));
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
        