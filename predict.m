function likehood = predict(file,estTR,estE,center)
    v = s_values(file,8,4);
    [m,n] = size(v);
    seq = [];
    for i = 1:n
        seq(i) = classify(v(:,i),center);
    end
    [state,likehood] = hmmviterbi(seq,estTR,estE);