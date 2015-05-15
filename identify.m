% input file and totoal number of people,return with likehood and user index
function [index,likehood] = identify(file,n)
    global estTR1 estE1 center1 estTR2 estE2 center2 estTR3 estE3 center3 estTR4 estE4 center4;
    global estTR5 estE5 center5 estTR6 estE6 center6 estTR7 estE7 center7 estTR8 estE8 center8;
    %global estTR9 estE9 center9 estTR10 estE10 center10;
    likehood = [];
    for i = 1:n
        tr = strcat('estTR',num2str(i));
        emi = strcat('estE',num2str(i));
        center = strcat('center',num2str(i));
        likehood(i) = predict(file,eval(tr),eval(emi),eval(center));
    end
    [likehood,index] = max(likehood);