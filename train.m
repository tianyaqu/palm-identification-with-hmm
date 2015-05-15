function [estTR,estE,center] = train(path,person_num,test_num)
    str_n = num2str(person_num);
    format = strcat(str_n,'-*.bmp');
    h_files = dir(fullfile(path,format));
    files = [];
    vs = [];
    width = 8;
    step = 4;
    n = 128;
    len = length(1:step:(n - width));
    for i = 1:length(h_files)-test_num
        t = strcat(path,h_files(i).name);
        files = [files t];
        vs = [vs s_values(t,width,step)];
    end

    vst = vs';
    [idx,center] = kmeans(vs',6);
    
    seq = [];
    for k = 0:length(idx)/len - 1
        tt = idx(k*30 + 1:(k+1)*30);
        seq = [seq;tt'];
    end
    
    ini_trans = [];
    for i = 1:6
        ini_trans = [ini_trans;1/6,1/6,1/6,1/6,1/6,1/6];
    end
    
    ini_emi = rand(6,7);
    for i = 1:6
        ini_emi(i,:) = (ini_emi(i,:)+0.0001)/sum(ini_emi(i,:));
    end
    
    %EM
    [estTR,estE] = hmmtrain(seq,ini_trans,ini_emi);