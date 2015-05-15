function index = classify(vpoint,centers)
    [m,n] = size(centers);
    dis = [];
    for i = 1:m
        dis(i) = 0;
        for j = 1:n
            dis(i) = dis(i) + abs(vpoint(j) - centers(i,j));
        end
    end
    
    [tvalue,index] = min(dis);