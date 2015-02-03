function wl = waveletMethodA(data)
    % WAVELETMETHODA - 用于进行复小波变换
    %   waveletMethodA(A)对A进行下列步骤
    %   1.求尺度为4的cgaus复小波变换幅值的平方
    %   2.求幅值序列的一阶差分
    %   3.求一阶差分的归一化序列
    %% 预定义
    scale = 4;
    %% 1
    wl = cwt(data,scale,'cgau2');%bior1.3 cgau2
    wl = abs(wl).^2;
    %% 2
    wl = diff(wl);
    %% 3
    wl = wl/max(abs(wl));
end