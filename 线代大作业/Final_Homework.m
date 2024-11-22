% 系数矩阵 A
A = [
    1  -1  -1   0   0   0;
    1   0  -1  -1   0   0;
    0   0   0   1  -1  -1;
    0   1   0   0  -1  -1;
    6   0  12   0   0   0;
    0  -4  12   0 -12   0;
    0   0   0   0 -12   6
];

% 常数向量 b
b = [0; 0; 0; 0; 10; 0; 0];


disp(rank(A));

x = A \ b;
disp('解向量 x = ');
disp(x);

% 解释结果
fprintf('i_a = %.4f A\n', x(1));
fprintf('i_CF = %.4f A\n', x(2));
fprintf('i_3 = %.4f A\n', x(3));
fprintf('i_ED = %.4f A\n', x(4));
fprintf('i_FE = %.4f A\n', x(5));
fprintf('i_c = %.4f A\n', x(6));

fprintf('u_4 = %.4f V\n', x(2) * 4);
fprintf('u_7 = %.4f V\n', x(6) * 2);
