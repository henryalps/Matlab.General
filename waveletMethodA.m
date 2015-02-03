function wl = waveletMethodA(data)
    % WAVELETMETHODA - ���ڽ��и�С���任
    %   waveletMethodA(A)��A�������в���
    %   1.��߶�Ϊ4��cgaus��С���任��ֵ��ƽ��
    %   2.���ֵ���е�һ�ײ��
    %   3.��һ�ײ�ֵĹ�һ������
    %% Ԥ����
    scale = 4;
    %% 1
    wl = cwt(data,scale,'cgau2');%bior1.3 cgau2
    wl = abs(wl).^2;
    %% 2
    wl = diff(wl);
    %% 3
    wl = wl/max(abs(wl));
end