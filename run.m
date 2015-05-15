
    global estTR1 estE1 center1 estTR2 estE2 center2 estTR3 estE3 center3 estTR4 estE4 center4;
    global estTR5 estE5 center5 estTR6 estE6 center6 estTR7 estE7 center7 estTR8 estE8 center8;
    %global estTR9 estE9 center9 estTR10 estE10 center10;
    [estTR1,estE1,center1] = train('./',1,3);
    [estTR2,estE2,center2] = train('./',2,3);
    [estTR3,estE3,center3] = train('./',3,3);
    
    [estTR4,estE4,center4] = train('./',4,3);
    %[estTR5,estE5,center5] = train('./',5,1);
    %[estTR6,estE6,center6] = train('./',6,1);
    %[estTR7,estE7,center7] = train('./',7,1);
    %[estTR8,estE8,center8] = train('./',8,1);
    %[estTR9,estE9,center9] = train('./',9,1);
    %[estTR10,estE10,center10] = train('./',10,1);

    % tests,you may add your own test cases,it will print 1,2,3,3,4 in theory.
    file = '1-2.bmp';
    [user_num,likehood] = identify(file,4);
    
    file1 = '2-9.bmp';
    [user_num1,likehood1] = identify(file1,4);
    
    file2 = '3-9.bmp';
    [user_num2,likehood2] = identify(file2,4);    
    
    file3 = '3-5.bmp';
    [user_num3,likehood3] = identify(file3,4);
    
    
    file4 = '4-8.bmp';
    [user_num4,likehood4] = identify(file4,4);    
    
    
    user_num,user_num1,user_num2,user_num3,user_num4
    
    