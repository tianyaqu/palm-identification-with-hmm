% generate the singular values,we keep the first 7
function v = s_values(file,width,step)
    img = double(imread(file));
    [m,n] = size(img);
    v = [];
    for i = 1:step:(n - width)
        piece = img(:,i:i + (width - 1));
        s = svd(piece);
        v = [v s(1:7)];
    end